
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sock {size_t sk_wmem_queued; int (* sk_write_space ) (struct sock*) ;int sk_write_queue; int sk_allocation; TYPE_1__* sk_socket; scalar_t__ sk_err; } ;
struct sk_buff {size_t len; size_t data_len; size_t truesize; int ip_summed; struct sk_buff* next; } ;
struct page {int dummy; } ;
struct TYPE_6__ {int tx_bytes; int tx_msgs; } ;
struct kcm_sock {int tx_wait_more; TYPE_2__ stats; struct sk_buff* seq_skb; int sk; } ;
typedef size_t ssize_t ;
struct TYPE_8__ {struct sk_buff* last_skb; } ;
struct TYPE_7__ {int nr_frags; int tx_flags; struct sk_buff* frag_list; int * frags; } ;
struct TYPE_5__ {int flags; } ;


 int CHECKSUM_UNNECESSARY ;
 int EAGAIN ;
 int EPIPE ;
 int KCM_STATS_ADD (int ,size_t) ;
 int KCM_STATS_INCR (int ) ;
 int MAX_SKB_FRAGS ;
 int MSG_BATCH ;
 int MSG_DONTWAIT ;
 int MSG_MORE ;
 int MSG_SENDPAGE_NOTLAST ;
 int SKBTX_SHARED_FRAG ;
 int SOCKWQ_ASYNC_NOSPACE ;
 int SOCK_NOSPACE ;
 int __skb_queue_tail (int *,struct sk_buff*) ;
 struct sk_buff* alloc_skb (int ,int ) ;
 int get_page (struct page*) ;
 int kcm_push (struct kcm_sock*) ;
 struct kcm_sock* kcm_sk (struct sock*) ;
 TYPE_4__* kcm_tx_msg (struct sk_buff*) ;
 int kcm_write_msgs (struct kcm_sock*) ;
 int lock_sock (struct sock*) ;
 int pr_warn (char*) ;
 int release_sock (struct sock*) ;
 int report_csk_error (int *,int) ;
 int set_bit (int ,int *) ;
 int sk_clear_bit (int ,struct sock*) ;
 int sk_mem_charge (struct sock*,size_t) ;
 int sk_stream_error (struct sock*,int,int) ;
 int sk_stream_memory_free (struct sock*) ;
 int sk_stream_wait_memory (struct sock*,long*) ;
 scalar_t__ skb_can_coalesce (struct sk_buff*,int,struct page*,int) ;
 int skb_fill_page_desc (struct sk_buff*,int,struct page*,int,size_t) ;
 int skb_frag_size_add (int *,size_t) ;
 int skb_queue_empty (int *) ;
 scalar_t__ skb_queue_len (int *) ;
 TYPE_3__* skb_shinfo (struct sk_buff*) ;
 long sock_sndtimeo (struct sock*,int) ;
 int stub1 (struct sock*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static ssize_t kcm_sendpage(struct socket *sock, struct page *page,
       int offset, size_t size, int flags)

{
 struct sock *sk = sock->sk;
 struct kcm_sock *kcm = kcm_sk(sk);
 struct sk_buff *skb = ((void*)0), *head = ((void*)0);
 long timeo = sock_sndtimeo(sk, flags & MSG_DONTWAIT);
 bool eor;
 int err = 0;
 int i;

 if (flags & MSG_SENDPAGE_NOTLAST)
  flags |= MSG_MORE;


 eor = !(flags & MSG_MORE);

 lock_sock(sk);

 sk_clear_bit(SOCKWQ_ASYNC_NOSPACE, sk);

 err = -EPIPE;
 if (sk->sk_err)
  goto out_error;

 if (kcm->seq_skb) {

  head = kcm->seq_skb;
  skb = kcm_tx_msg(head)->last_skb;
  i = skb_shinfo(skb)->nr_frags;

  if (skb_can_coalesce(skb, i, page, offset)) {
   skb_frag_size_add(&skb_shinfo(skb)->frags[i - 1], size);
   skb_shinfo(skb)->tx_flags |= SKBTX_SHARED_FRAG;
   goto coalesced;
  }

  if (i >= MAX_SKB_FRAGS) {
   struct sk_buff *tskb;

   tskb = alloc_skb(0, sk->sk_allocation);
   while (!tskb) {
    kcm_push(kcm);
    err = sk_stream_wait_memory(sk, &timeo);
    if (err)
     goto out_error;
   }

   if (head == skb)
    skb_shinfo(head)->frag_list = tskb;
   else
    skb->next = tskb;

   skb = tskb;
   skb->ip_summed = CHECKSUM_UNNECESSARY;
   i = 0;
  }
 } else {

  if (!sk_stream_memory_free(sk)) {
   kcm_push(kcm);
   set_bit(SOCK_NOSPACE, &sk->sk_socket->flags);
   err = sk_stream_wait_memory(sk, &timeo);
   if (err)
    goto out_error;
  }

  head = alloc_skb(0, sk->sk_allocation);
  while (!head) {
   kcm_push(kcm);
   err = sk_stream_wait_memory(sk, &timeo);
   if (err)
    goto out_error;
  }

  skb = head;
  i = 0;
 }

 get_page(page);
 skb_fill_page_desc(skb, i, page, offset, size);
 skb_shinfo(skb)->tx_flags |= SKBTX_SHARED_FRAG;

coalesced:
 skb->len += size;
 skb->data_len += size;
 skb->truesize += size;
 sk->sk_wmem_queued += size;
 sk_mem_charge(sk, size);

 if (head != skb) {
  head->len += size;
  head->data_len += size;
  head->truesize += size;
 }

 if (eor) {
  bool not_busy = skb_queue_empty(&sk->sk_write_queue);


  __skb_queue_tail(&sk->sk_write_queue, head);
  kcm->seq_skb = ((void*)0);
  KCM_STATS_INCR(kcm->stats.tx_msgs);

  if (flags & MSG_BATCH) {
   kcm->tx_wait_more = 1;
  } else if (kcm->tx_wait_more || not_busy) {
   err = kcm_write_msgs(kcm);
   if (err < 0) {





    pr_warn("KCM: Hard failure on kcm_write_msgs\n");
    report_csk_error(&kcm->sk, -err);
   }
  }
 } else {

  kcm->seq_skb = head;
  kcm_tx_msg(head)->last_skb = skb;
 }

 KCM_STATS_ADD(kcm->stats.tx_bytes, size);

 release_sock(sk);
 return size;

out_error:
 kcm_push(kcm);

 err = sk_stream_error(sk, flags, err);


 if (unlikely(skb_queue_len(&sk->sk_write_queue) == 0 && err == -EAGAIN))
  sk->sk_write_space(sk);

 release_sock(sk);
 return err;
}

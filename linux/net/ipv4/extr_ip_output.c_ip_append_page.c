
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sock {int sk_wmem_alloc; int sk_write_queue; int sk_allocation; } ;
struct sk_buff {int len; scalar_t__ ip_summed; int data_len; int truesize; scalar_t__ csum; scalar_t__ network_header; scalar_t__ transport_header; } ;
struct TYPE_5__ {TYPE_3__* dev; } ;
struct rtable {TYPE_2__ dst; } ;
struct page {int dummy; } ;
struct iphdr {int dummy; } ;
struct ip_options {int optlen; } ;
struct inet_cork {int flags; int fragsize; size_t length; scalar_t__ gso_size; struct ip_options* opt; scalar_t__ dst; } ;
struct TYPE_4__ {struct inet_cork base; } ;
struct inet_sock {int inet_dport; TYPE_1__ cork; scalar_t__ hdrincl; } ;
struct flowi4 {int daddr; } ;
typedef int ssize_t ;
typedef int __wsum ;
struct TYPE_6__ {int features; } ;


 scalar_t__ CHECKSUM_NONE ;
 int EINVAL ;
 int EMSGSIZE ;
 int ENOBUFS ;
 int EOPNOTSUPP ;
 int EPERM ;
 int IPCORK_OPT ;
 int IPSTATS_MIB_OUTDISCARDS ;
 int IP_INC_STATS (int ,int ) ;
 int IP_MAX_MTU ;
 int LL_RESERVED_SPACE (TYPE_3__*) ;
 int MSG_PROBE ;
 int NETIF_F_SG ;
 int __skb_queue_tail (int *,struct sk_buff*) ;
 scalar_t__ csum_block_add (scalar_t__,int ,unsigned int) ;
 int csum_page (struct page*,int,int) ;
 scalar_t__ csum_sub (scalar_t__,scalar_t__) ;
 struct inet_sock* inet_sk (struct sock*) ;
 int ip_local_error (struct sock*,int,int ,int ,int) ;
 scalar_t__ ip_sk_ignore_df (struct sock*) ;
 int pskb_trim_unique (struct sk_buff*,unsigned int) ;
 int refcount_add (int,int *) ;
 scalar_t__ skb_append_pagefrags (struct sk_buff*,struct page*,int,int) ;
 scalar_t__ skb_copy_and_csum_bits (struct sk_buff*,unsigned int,int ,unsigned int,int ) ;
 struct sk_buff* skb_peek_tail (int *) ;
 int skb_put (struct sk_buff*,unsigned int) ;
 scalar_t__ skb_queue_empty (int *) ;
 int skb_reserve (struct sk_buff*,int) ;
 int skb_reset_network_header (struct sk_buff*) ;
 int skb_transport_header (struct sk_buff*) ;
 int sock_net (struct sock*) ;
 struct sk_buff* sock_wmalloc (struct sock*,int,int,int ) ;
 scalar_t__ unlikely (int) ;

ssize_t ip_append_page(struct sock *sk, struct flowi4 *fl4, struct page *page,
         int offset, size_t size, int flags)
{
 struct inet_sock *inet = inet_sk(sk);
 struct sk_buff *skb;
 struct rtable *rt;
 struct ip_options *opt = ((void*)0);
 struct inet_cork *cork;
 int hh_len;
 int mtu;
 int len;
 int err;
 unsigned int maxfraglen, fragheaderlen, fraggap, maxnonfragsize;

 if (inet->hdrincl)
  return -EPERM;

 if (flags&MSG_PROBE)
  return 0;

 if (skb_queue_empty(&sk->sk_write_queue))
  return -EINVAL;

 cork = &inet->cork.base;
 rt = (struct rtable *)cork->dst;
 if (cork->flags & IPCORK_OPT)
  opt = cork->opt;

 if (!(rt->dst.dev->features&NETIF_F_SG))
  return -EOPNOTSUPP;

 hh_len = LL_RESERVED_SPACE(rt->dst.dev);
 mtu = cork->gso_size ? IP_MAX_MTU : cork->fragsize;

 fragheaderlen = sizeof(struct iphdr) + (opt ? opt->optlen : 0);
 maxfraglen = ((mtu - fragheaderlen) & ~7) + fragheaderlen;
 maxnonfragsize = ip_sk_ignore_df(sk) ? 0xFFFF : mtu;

 if (cork->length + size > maxnonfragsize - fragheaderlen) {
  ip_local_error(sk, EMSGSIZE, fl4->daddr, inet->inet_dport,
          mtu - (opt ? opt->optlen : 0));
  return -EMSGSIZE;
 }

 skb = skb_peek_tail(&sk->sk_write_queue);
 if (!skb)
  return -EINVAL;

 cork->length += size;

 while (size > 0) {

  len = mtu - skb->len;
  if (len < size)
   len = maxfraglen - skb->len;

  if (len <= 0) {
   struct sk_buff *skb_prev;
   int alloclen;

   skb_prev = skb;
   fraggap = skb_prev->len - maxfraglen;

   alloclen = fragheaderlen + hh_len + fraggap + 15;
   skb = sock_wmalloc(sk, alloclen, 1, sk->sk_allocation);
   if (unlikely(!skb)) {
    err = -ENOBUFS;
    goto error;
   }




   skb->ip_summed = CHECKSUM_NONE;
   skb->csum = 0;
   skb_reserve(skb, hh_len);




   skb_put(skb, fragheaderlen + fraggap);
   skb_reset_network_header(skb);
   skb->transport_header = (skb->network_header +
       fragheaderlen);
   if (fraggap) {
    skb->csum = skb_copy_and_csum_bits(skb_prev,
           maxfraglen,
          skb_transport_header(skb),
           fraggap, 0);
    skb_prev->csum = csum_sub(skb_prev->csum,
         skb->csum);
    pskb_trim_unique(skb_prev, maxfraglen);
   }




   __skb_queue_tail(&sk->sk_write_queue, skb);
   continue;
  }

  if (len > size)
   len = size;

  if (skb_append_pagefrags(skb, page, offset, len)) {
   err = -EMSGSIZE;
   goto error;
  }

  if (skb->ip_summed == CHECKSUM_NONE) {
   __wsum csum;
   csum = csum_page(page, offset, len);
   skb->csum = csum_block_add(skb->csum, csum, skb->len);
  }

  skb->len += len;
  skb->data_len += len;
  skb->truesize += len;
  refcount_add(len, &sk->sk_wmem_alloc);
  offset += len;
  size -= len;
 }
 return 0;

error:
 cork->length -= size;
 IP_INC_STATS(sock_net(sk), IPSTATS_MIB_OUTDISCARDS);
 return err;
}

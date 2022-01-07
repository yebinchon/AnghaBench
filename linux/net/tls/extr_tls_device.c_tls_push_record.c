
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_record_info {int num_frags; int * frags; int list; scalar_t__ len; scalar_t__ end_seq; } ;
struct tls_prot_info {int dummy; } ;
struct tls_offload_context_tx {int * sg_tx_data; int * open_record; int records_list; } ;
struct tls_context {int tx; int flags; struct tls_prot_info prot_info; } ;
struct tcp_sock {scalar_t__ write_seq; } ;
struct sock {int dummy; } ;
typedef int skb_frag_t ;


 int TLS_TX_SYNC_SCHED ;
 int get_page (int ) ;
 int list_add_tail_rcu (int *,int *) ;
 int sg_mark_end (int *) ;
 int sg_set_page (int *,int ,int ,int ) ;
 int sg_unmark_end (int *) ;
 int sk_mem_charge (struct sock*,int ) ;
 int skb_frag_off (int *) ;
 int skb_frag_page (int *) ;
 int skb_frag_size (int *) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 scalar_t__ test_bit (int ,int *) ;
 int tls_advance_record_sn (struct sock*,struct tls_prot_info*,int *) ;
 int tls_device_resync_tx (struct sock*,struct tls_context*,scalar_t__) ;
 int tls_push_sg (struct sock*,struct tls_context*,int *,int ,int) ;

__attribute__((used)) static int tls_push_record(struct sock *sk,
      struct tls_context *ctx,
      struct tls_offload_context_tx *offload_ctx,
      struct tls_record_info *record,
      int flags)
{
 struct tls_prot_info *prot = &ctx->prot_info;
 struct tcp_sock *tp = tcp_sk(sk);
 skb_frag_t *frag;
 int i;

 record->end_seq = tp->write_seq + record->len;
 list_add_tail_rcu(&record->list, &offload_ctx->records_list);
 offload_ctx->open_record = ((void*)0);

 if (test_bit(TLS_TX_SYNC_SCHED, &ctx->flags))
  tls_device_resync_tx(sk, ctx, tp->write_seq);

 tls_advance_record_sn(sk, prot, &ctx->tx);

 for (i = 0; i < record->num_frags; i++) {
  frag = &record->frags[i];
  sg_unmark_end(&offload_ctx->sg_tx_data[i]);
  sg_set_page(&offload_ctx->sg_tx_data[i], skb_frag_page(frag),
       skb_frag_size(frag), skb_frag_off(frag));
  sk_mem_charge(sk, skb_frag_size(frag));
  get_page(skb_frag_page(frag));
 }
 sg_mark_end(&offload_ctx->sg_tx_data[record->num_frags - 1]);


 return tls_push_sg(sk, ctx, offload_ctx->sg_tx_data, 0, flags);
}

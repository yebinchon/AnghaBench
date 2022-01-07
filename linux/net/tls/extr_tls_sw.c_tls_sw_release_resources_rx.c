
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tls_sw_context_rx {scalar_t__ saved_data_ready; int strp; scalar_t__ aead_recv; int rx_list; int * recv_pkt; } ;
struct TYPE_2__ {int iv; int rec_seq; } ;
struct tls_context {TYPE_1__ rx; } ;
struct sock {int sk_callback_lock; scalar_t__ sk_data_ready; } ;


 int crypto_free_aead (scalar_t__) ;
 int kfree (int ) ;
 int kfree_skb (int *) ;
 int skb_queue_purge (int *) ;
 int strp_stop (int *) ;
 struct tls_context* tls_get_ctx (struct sock*) ;
 struct tls_sw_context_rx* tls_sw_ctx_rx (struct tls_context*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

void tls_sw_release_resources_rx(struct sock *sk)
{
 struct tls_context *tls_ctx = tls_get_ctx(sk);
 struct tls_sw_context_rx *ctx = tls_sw_ctx_rx(tls_ctx);

 kfree(tls_ctx->rx.rec_seq);
 kfree(tls_ctx->rx.iv);

 if (ctx->aead_recv) {
  kfree_skb(ctx->recv_pkt);
  ctx->recv_pkt = ((void*)0);
  skb_queue_purge(&ctx->rx_list);
  crypto_free_aead(ctx->aead_recv);
  strp_stop(&ctx->strp);




  if (ctx->saved_data_ready) {
   write_lock_bh(&sk->sk_callback_lock);
   sk->sk_data_ready = ctx->saved_data_ready;
   write_unlock_bh(&sk->sk_callback_lock);
  }
 }
}

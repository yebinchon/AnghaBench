
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_sw_context_rx {int strp; int saved_data_ready; } ;
struct tls_context {int dummy; } ;
struct sock {int sk_callback_lock; int sk_data_ready; } ;


 int strp_check_rcv (int *) ;
 int tls_data_ready ;
 struct tls_sw_context_rx* tls_sw_ctx_rx (struct tls_context*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

void tls_sw_strparser_arm(struct sock *sk, struct tls_context *tls_ctx)
{
 struct tls_sw_context_rx *rx_ctx = tls_sw_ctx_rx(tls_ctx);

 write_lock_bh(&sk->sk_callback_lock);
 rx_ctx->saved_data_ready = sk->sk_data_ready;
 sk->sk_data_ready = tls_data_ready;
 write_unlock_bh(&sk->sk_callback_lock);

 strp_check_rcv(&rx_ctx->strp);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tls_context {scalar_t__ tx_conf; scalar_t__ rx_conf; scalar_t__ sk_write_space; TYPE_1__* sk_proto; } ;
struct sock {scalar_t__ sk_write_space; int sk_callback_lock; TYPE_1__* sk_prot; } ;
struct inet_connection_sock {int icsk_ulp_data; } ;
struct TYPE_2__ {int (* close ) (struct sock*,long) ;} ;


 scalar_t__ TLS_BASE ;
 scalar_t__ TLS_HW ;
 scalar_t__ TLS_SW ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 int lock_sock (struct sock*) ;
 int rcu_assign_pointer (int ,int *) ;
 int release_sock (struct sock*) ;
 long sock_sndtimeo (struct sock*,int ) ;
 int stub1 (struct sock*,long) ;
 int tls_ctx_free (struct sock*,struct tls_context*) ;
 struct tls_context* tls_get_ctx (struct sock*) ;
 int tls_sk_proto_cleanup (struct sock*,struct tls_context*,long) ;
 int tls_sw_cancel_work_tx (struct tls_context*) ;
 int tls_sw_free_ctx_rx (struct tls_context*) ;
 int tls_sw_free_ctx_tx (struct tls_context*) ;
 int tls_sw_strparser_done (struct tls_context*) ;
 scalar_t__ tls_write_space ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void tls_sk_proto_close(struct sock *sk, long timeout)
{
 struct inet_connection_sock *icsk = inet_csk(sk);
 struct tls_context *ctx = tls_get_ctx(sk);
 long timeo = sock_sndtimeo(sk, 0);
 bool free_ctx;

 if (ctx->tx_conf == TLS_SW)
  tls_sw_cancel_work_tx(ctx);

 lock_sock(sk);
 free_ctx = ctx->tx_conf != TLS_HW && ctx->rx_conf != TLS_HW;

 if (ctx->tx_conf != TLS_BASE || ctx->rx_conf != TLS_BASE)
  tls_sk_proto_cleanup(sk, ctx, timeo);

 write_lock_bh(&sk->sk_callback_lock);
 if (free_ctx)
  rcu_assign_pointer(icsk->icsk_ulp_data, ((void*)0));
 sk->sk_prot = ctx->sk_proto;
 if (sk->sk_write_space == tls_write_space)
  sk->sk_write_space = ctx->sk_write_space;
 write_unlock_bh(&sk->sk_callback_lock);
 release_sock(sk);
 if (ctx->tx_conf == TLS_SW)
  tls_sw_free_ctx_tx(ctx);
 if (ctx->rx_conf == TLS_SW || ctx->rx_conf == TLS_HW)
  tls_sw_strparser_done(ctx);
 if (ctx->rx_conf == TLS_SW)
  tls_sw_free_ctx_rx(ctx);
 ctx->sk_proto->close(sk, timeout);

 if (free_ctx)
  tls_ctx_free(sk, ctx);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_sw_context_rx {int (* saved_data_ready ) (struct sock*) ;int strp; } ;
struct tls_context {int dummy; } ;
struct sock {int dummy; } ;
struct sk_psock {int ingress_msg; } ;


 int list_empty (int *) ;
 struct sk_psock* sk_psock_get (struct sock*) ;
 int sk_psock_put (struct sock*,struct sk_psock*) ;
 int strp_data_ready (int *) ;
 int stub1 (struct sock*) ;
 struct tls_context* tls_get_ctx (struct sock*) ;
 struct tls_sw_context_rx* tls_sw_ctx_rx (struct tls_context*) ;

__attribute__((used)) static void tls_data_ready(struct sock *sk)
{
 struct tls_context *tls_ctx = tls_get_ctx(sk);
 struct tls_sw_context_rx *ctx = tls_sw_ctx_rx(tls_ctx);
 struct sk_psock *psock;

 strp_data_ready(&ctx->strp);

 psock = sk_psock_get(sk);
 if (psock && !list_empty(&psock->ingress_msg)) {
  ctx->saved_data_ready(sk);
  sk_psock_put(sk, psock);
 }
}

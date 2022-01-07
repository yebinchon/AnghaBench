
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_context {scalar_t__ tx_conf; int (* sk_write_space ) (struct sock*) ;scalar_t__ in_tcp_sendpages; } ;
struct sock {int dummy; } ;


 scalar_t__ TLS_HW ;
 int stub1 (struct sock*) ;
 int stub2 (struct sock*) ;
 int tls_device_write_space (struct sock*,struct tls_context*) ;
 struct tls_context* tls_get_ctx (struct sock*) ;
 int tls_sw_write_space (struct sock*,struct tls_context*) ;

__attribute__((used)) static void tls_write_space(struct sock *sk)
{
 struct tls_context *ctx = tls_get_ctx(sk);





 if (ctx->in_tcp_sendpages) {
  ctx->sk_write_space(sk);
  return;
 }






  tls_sw_write_space(sk, ctx);

 ctx->sk_write_space(sk);
}

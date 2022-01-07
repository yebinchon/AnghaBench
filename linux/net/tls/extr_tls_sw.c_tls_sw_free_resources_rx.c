
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_context {int dummy; } ;
struct sock {int dummy; } ;


 struct tls_context* tls_get_ctx (struct sock*) ;
 int tls_sw_free_ctx_rx (struct tls_context*) ;
 int tls_sw_release_resources_rx (struct sock*) ;

void tls_sw_free_resources_rx(struct sock *sk)
{
 struct tls_context *tls_ctx = tls_get_ctx(sk);

 tls_sw_release_resources_rx(sk);
 tls_sw_free_ctx_rx(tls_ctx);
}

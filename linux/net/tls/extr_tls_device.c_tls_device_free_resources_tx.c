
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_context {int dummy; } ;
struct sock {int dummy; } ;


 int tls_free_partial_record (struct sock*,struct tls_context*) ;
 struct tls_context* tls_get_ctx (struct sock*) ;

void tls_device_free_resources_tx(struct sock *sk)
{
 struct tls_context *tls_ctx = tls_get_ctx(sk);

 tls_free_partial_record(sk, tls_ctx);
}

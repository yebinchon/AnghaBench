
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_context {int (* push_pending_record ) (struct sock*,int) ;} ;
struct sock {int dummy; } ;


 int stub1 (struct sock*,int) ;
 struct tls_context* tls_get_ctx (struct sock*) ;
 scalar_t__ tls_is_pending_open_record (struct tls_context*) ;

__attribute__((used)) static int tls_handle_open_record(struct sock *sk, int flags)
{
 struct tls_context *ctx = tls_get_ctx(sk);

 if (tls_is_pending_open_record(ctx))
  return ctx->push_pending_record(sk, flags);

 return 0;
}

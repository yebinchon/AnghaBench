
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_context {int (* sk_destruct ) (struct sock*) ;} ;
struct sock {int dummy; } ;
struct inet_connection_sock {int icsk_ulp_data; } ;


 struct inet_connection_sock* inet_csk (struct sock*) ;
 int rcu_assign_pointer (int ,int *) ;
 int stub1 (struct sock*) ;
 int tls_ctx_free (struct sock*,struct tls_context*) ;
 struct tls_context* tls_get_ctx (struct sock*) ;

__attribute__((used)) static void tls_hw_sk_destruct(struct sock *sk)
{
 struct tls_context *ctx = tls_get_ctx(sk);
 struct inet_connection_sock *icsk = inet_csk(sk);

 ctx->sk_destruct(sk);

 rcu_assign_pointer(icsk->icsk_ulp_data, ((void*)0));
 tls_ctx_free(sk, ctx);
}

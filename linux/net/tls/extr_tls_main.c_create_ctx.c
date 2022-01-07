
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_context {int sk_proto; int tx_lock; } ;
struct sock {int sk_prot; } ;
struct inet_connection_sock {int icsk_ulp_data; } ;


 int GFP_ATOMIC ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 struct tls_context* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int rcu_assign_pointer (int ,struct tls_context*) ;

__attribute__((used)) static struct tls_context *create_ctx(struct sock *sk)
{
 struct inet_connection_sock *icsk = inet_csk(sk);
 struct tls_context *ctx;

 ctx = kzalloc(sizeof(*ctx), GFP_ATOMIC);
 if (!ctx)
  return ((void*)0);

 mutex_init(&ctx->tx_lock);
 rcu_assign_pointer(icsk->icsk_ulp_data, ctx);
 ctx->sk_proto = sk->sk_prot;
 return ctx;
}

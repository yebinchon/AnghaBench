
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_fastopen_cookie {int dummy; } ;
struct tcp_fastopen_context {int * key; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct request_sock {int dummy; } ;


 int __tcp_fastopen_cookie_gen_cipher (struct request_sock*,struct sk_buff*,int *,struct tcp_fastopen_cookie*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct tcp_fastopen_context* tcp_fastopen_get_ctx (struct sock*) ;

__attribute__((used)) static void tcp_fastopen_cookie_gen(struct sock *sk,
        struct request_sock *req,
        struct sk_buff *syn,
        struct tcp_fastopen_cookie *foc)
{
 struct tcp_fastopen_context *ctx;

 rcu_read_lock();
 ctx = tcp_fastopen_get_ctx(sk);
 if (ctx)
  __tcp_fastopen_cookie_gen_cipher(req, syn, &ctx->key[0], foc);
 rcu_read_unlock();
}

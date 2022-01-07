
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_fastopen_cookie {int len; } ;
struct tcp_fastopen_context {int * key; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct request_sock {int dummy; } ;


 int __tcp_fastopen_cookie_gen_cipher (struct request_sock*,struct sk_buff*,int *,struct tcp_fastopen_cookie*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int tcp_fastopen_context_len (struct tcp_fastopen_context*) ;
 scalar_t__ tcp_fastopen_cookie_match (struct tcp_fastopen_cookie*,struct tcp_fastopen_cookie*) ;
 struct tcp_fastopen_context* tcp_fastopen_get_ctx (struct sock*) ;

__attribute__((used)) static int tcp_fastopen_cookie_gen_check(struct sock *sk,
      struct request_sock *req,
      struct sk_buff *syn,
      struct tcp_fastopen_cookie *orig,
      struct tcp_fastopen_cookie *valid_foc)
{
 struct tcp_fastopen_cookie search_foc = { .len = -1 };
 struct tcp_fastopen_cookie *foc = valid_foc;
 struct tcp_fastopen_context *ctx;
 int i, ret = 0;

 rcu_read_lock();
 ctx = tcp_fastopen_get_ctx(sk);
 if (!ctx)
  goto out;
 for (i = 0; i < tcp_fastopen_context_len(ctx); i++) {
  __tcp_fastopen_cookie_gen_cipher(req, syn, &ctx->key[i], foc);
  if (tcp_fastopen_cookie_match(foc, orig)) {
   ret = i + 1;
   goto out;
  }
  foc = &search_foc;
 }
out:
 rcu_read_unlock();
 return ret;
}

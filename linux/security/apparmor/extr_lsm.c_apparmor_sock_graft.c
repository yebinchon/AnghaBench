
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct sock {int dummy; } ;
struct aa_sk_ctx {scalar_t__ label; } ;


 struct aa_sk_ctx* SK_CTX (struct sock*) ;
 scalar_t__ aa_get_current_label () ;

__attribute__((used)) static void apparmor_sock_graft(struct sock *sk, struct socket *parent)
{
 struct aa_sk_ctx *ctx = SK_CTX(sk);

 if (!ctx->label)
  ctx->label = aa_get_current_label();
}

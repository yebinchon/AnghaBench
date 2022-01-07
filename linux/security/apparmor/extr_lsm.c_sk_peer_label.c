
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct aa_sk_ctx {struct aa_label* peer; } ;
struct aa_label {int dummy; } ;


 int ENOPROTOOPT ;
 struct aa_label* ERR_PTR (int ) ;
 struct aa_sk_ctx* SK_CTX (struct sock*) ;

__attribute__((used)) static struct aa_label *sk_peer_label(struct sock *sk)
{
 struct aa_sk_ctx *ctx = SK_CTX(sk);

 if (ctx->peer)
  return ctx->peer;

 return ERR_PTR(-ENOPROTOOPT);
}

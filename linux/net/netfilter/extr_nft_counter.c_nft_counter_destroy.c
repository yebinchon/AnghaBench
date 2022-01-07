
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_expr {int dummy; } ;
struct nft_ctx {int dummy; } ;
struct nft_counter_percpu_priv {int dummy; } ;


 int nft_counter_do_destroy (struct nft_counter_percpu_priv*) ;
 struct nft_counter_percpu_priv* nft_expr_priv (struct nft_expr const*) ;

__attribute__((used)) static void nft_counter_destroy(const struct nft_ctx *ctx,
    const struct nft_expr *expr)
{
 struct nft_counter_percpu_priv *priv = nft_expr_priv(expr);

 nft_counter_do_destroy(priv);
}

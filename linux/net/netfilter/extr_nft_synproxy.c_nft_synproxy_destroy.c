
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_expr {int dummy; } ;
struct nft_ctx {int dummy; } ;


 int nft_synproxy_do_destroy (struct nft_ctx const*) ;

__attribute__((used)) static void nft_synproxy_destroy(const struct nft_ctx *ctx,
     const struct nft_expr *expr)
{
 nft_synproxy_do_destroy(ctx);
}

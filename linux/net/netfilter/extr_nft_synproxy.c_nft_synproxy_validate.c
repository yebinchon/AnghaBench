
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_expr {int dummy; } ;
struct nft_data {int dummy; } ;
struct nft_ctx {int chain; } ;


 int NF_INET_FORWARD ;
 int NF_INET_LOCAL_IN ;
 int nft_chain_validate_hooks (int ,int) ;

__attribute__((used)) static int nft_synproxy_validate(const struct nft_ctx *ctx,
     const struct nft_expr *expr,
     const struct nft_data **data)
{
 return nft_chain_validate_hooks(ctx->chain, (1 << NF_INET_LOCAL_IN) |
          (1 << NF_INET_FORWARD));
}

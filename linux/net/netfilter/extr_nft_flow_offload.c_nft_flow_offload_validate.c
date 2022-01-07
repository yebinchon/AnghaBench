
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_expr {int dummy; } ;
struct nft_data {int dummy; } ;
struct nft_ctx {int chain; } ;


 int NF_INET_FORWARD ;
 int nft_chain_validate_hooks (int ,unsigned int) ;

__attribute__((used)) static int nft_flow_offload_validate(const struct nft_ctx *ctx,
         const struct nft_expr *expr,
         const struct nft_data **data)
{
 unsigned int hook_mask = (1 << NF_INET_FORWARD);

 return nft_chain_validate_hooks(ctx->chain, hook_mask);
}

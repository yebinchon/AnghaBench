
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_rule {int dummy; } ;
struct nft_ctx {int dummy; } ;


 int NFT_TRANS_RELEASE ;
 int nf_tables_rule_destroy (struct nft_ctx const*,struct nft_rule*) ;
 int nft_rule_expr_deactivate (struct nft_ctx const*,struct nft_rule*,int ) ;

__attribute__((used)) static void nf_tables_rule_release(const struct nft_ctx *ctx,
       struct nft_rule *rule)
{
 nft_rule_expr_deactivate(ctx, rule, NFT_TRANS_RELEASE);
 nf_tables_rule_destroy(ctx, rule);
}

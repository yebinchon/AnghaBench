
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_trans {int dummy; } ;
struct nft_rule {int dummy; } ;
struct nft_ctx {int dummy; } ;


 int ENOMEM ;
 int NFT_MSG_DELRULE ;
 int NFT_TRANS_PREPARE ;
 int nf_tables_delrule_deactivate (struct nft_ctx*,struct nft_rule*) ;
 int nft_rule_expr_deactivate (struct nft_ctx*,struct nft_rule*,int ) ;
 int nft_trans_destroy (struct nft_trans*) ;
 struct nft_trans* nft_trans_rule_add (struct nft_ctx*,int ,struct nft_rule*) ;

__attribute__((used)) static int nft_delrule(struct nft_ctx *ctx, struct nft_rule *rule)
{
 struct nft_trans *trans;
 int err;

 trans = nft_trans_rule_add(ctx, NFT_MSG_DELRULE, rule);
 if (trans == ((void*)0))
  return -ENOMEM;

 err = nf_tables_delrule_deactivate(ctx, rule);
 if (err < 0) {
  nft_trans_destroy(trans);
  return err;
 }
 nft_rule_expr_deactivate(ctx, rule, NFT_TRANS_PREPARE);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nft_trans {int dummy; } ;
struct nft_ctx {int chain; int net; TYPE_1__* table; } ;
struct TYPE_2__ {int use; } ;


 scalar_t__ IS_ERR (struct nft_trans*) ;
 int NFT_MSG_DELCHAIN ;
 int PTR_ERR (struct nft_trans*) ;
 int nft_deactivate_next (int ,int ) ;
 struct nft_trans* nft_trans_chain_add (struct nft_ctx*,int ) ;

__attribute__((used)) static int nft_delchain(struct nft_ctx *ctx)
{
 struct nft_trans *trans;

 trans = nft_trans_chain_add(ctx, NFT_MSG_DELCHAIN);
 if (IS_ERR(trans))
  return PTR_ERR(trans);

 ctx->table->use--;
 nft_deactivate_next(ctx->net, ctx->chain);

 return 0;
}

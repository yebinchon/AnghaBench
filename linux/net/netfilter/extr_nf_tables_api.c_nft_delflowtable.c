
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nft_flowtable {int dummy; } ;
struct nft_ctx {TYPE_1__* table; int net; } ;
struct TYPE_2__ {int use; } ;


 int NFT_MSG_DELFLOWTABLE ;
 int nft_deactivate_next (int ,struct nft_flowtable*) ;
 int nft_trans_flowtable_add (struct nft_ctx*,int ,struct nft_flowtable*) ;

__attribute__((used)) static int nft_delflowtable(struct nft_ctx *ctx,
       struct nft_flowtable *flowtable)
{
 int err;

 err = nft_trans_flowtable_add(ctx, NFT_MSG_DELFLOWTABLE, flowtable);
 if (err < 0)
  return err;

 nft_deactivate_next(ctx->net, flowtable);
 ctx->table->use--;

 return err;
}

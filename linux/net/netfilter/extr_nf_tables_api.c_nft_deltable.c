
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_ctx {int table; int net; } ;


 int NFT_MSG_DELTABLE ;
 int nft_deactivate_next (int ,int ) ;
 int nft_trans_table_add (struct nft_ctx*,int ) ;

__attribute__((used)) static int nft_deltable(struct nft_ctx *ctx)
{
 int err;

 err = nft_trans_table_add(ctx, NFT_MSG_DELTABLE);
 if (err < 0)
  return err;

 nft_deactivate_next(ctx->net, ctx->table);
 return err;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nft_set {int dummy; } ;
struct nft_ctx {TYPE_1__* table; int net; } ;
struct TYPE_2__ {int use; } ;


 int NFT_MSG_DELSET ;
 int nft_deactivate_next (int ,struct nft_set*) ;
 int nft_trans_set_add (struct nft_ctx const*,int ,struct nft_set*) ;

__attribute__((used)) static int nft_delset(const struct nft_ctx *ctx, struct nft_set *set)
{
 int err;

 err = nft_trans_set_add(ctx, NFT_MSG_DELSET, set);
 if (err < 0)
  return err;

 nft_deactivate_next(ctx->net, set);
 ctx->table->use--;

 return err;
}

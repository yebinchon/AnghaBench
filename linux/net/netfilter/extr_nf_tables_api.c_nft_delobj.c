
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nft_object {int dummy; } ;
struct nft_ctx {TYPE_1__* table; int net; } ;
struct TYPE_2__ {int use; } ;


 int NFT_MSG_DELOBJ ;
 int nft_deactivate_next (int ,struct nft_object*) ;
 int nft_trans_obj_add (struct nft_ctx*,int ,struct nft_object*) ;

__attribute__((used)) static int nft_delobj(struct nft_ctx *ctx, struct nft_object *obj)
{
 int err;

 err = nft_trans_obj_add(ctx, NFT_MSG_DELOBJ, obj);
 if (err < 0)
  return err;

 nft_deactivate_next(ctx->net, obj);
 ctx->table->use--;

 return err;
}

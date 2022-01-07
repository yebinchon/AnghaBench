
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nft_trans_table {int dummy; } ;
struct nft_trans {int list; } ;
struct nft_ctx {TYPE_2__* net; int table; } ;
struct TYPE_3__ {int commit_list; } ;
struct TYPE_4__ {TYPE_1__ nft; } ;


 int ENOMEM ;
 int NFT_MSG_NEWTABLE ;
 int list_add_tail (int *,int *) ;
 int nft_activate_next (TYPE_2__*,int ) ;
 struct nft_trans* nft_trans_alloc (struct nft_ctx*,int,int) ;

__attribute__((used)) static int nft_trans_table_add(struct nft_ctx *ctx, int msg_type)
{
 struct nft_trans *trans;

 trans = nft_trans_alloc(ctx, msg_type, sizeof(struct nft_trans_table));
 if (trans == ((void*)0))
  return -ENOMEM;

 if (msg_type == NFT_MSG_NEWTABLE)
  nft_activate_next(ctx->net, ctx->table);

 list_add_tail(&trans->list, &ctx->net->nft.commit_list);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct nft_ctx {int dummy; } ;
struct nft_trans {int msg_type; struct nft_ctx ctx; } ;
typedef int gfp_t ;


 struct nft_trans* kzalloc (scalar_t__,int ) ;

__attribute__((used)) static struct nft_trans *nft_trans_alloc_gfp(const struct nft_ctx *ctx,
          int msg_type, u32 size, gfp_t gfp)
{
 struct nft_trans *trans;

 trans = kzalloc(sizeof(struct nft_trans) + size, gfp);
 if (trans == ((void*)0))
  return ((void*)0);

 trans->msg_type = msg_type;
 trans->ctx = *ctx;

 return trans;
}

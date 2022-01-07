
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nft_trans {int dummy; } ;
struct nft_ctx {int dummy; } ;


 int GFP_KERNEL ;
 struct nft_trans* nft_trans_alloc_gfp (struct nft_ctx const*,int,int ,int ) ;

__attribute__((used)) static struct nft_trans *nft_trans_alloc(const struct nft_ctx *ctx,
      int msg_type, u32 size)
{
 return nft_trans_alloc_gfp(ctx, msg_type, size, GFP_KERNEL);
}

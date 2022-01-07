
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int type; int protonum; int l3num; } ;
struct nft_offload_ctx {TYPE_1__ dep; } ;
typedef int __u8 ;
typedef int __u16 ;




 int NFT_OFFLOAD_DEP_UNSPEC ;
 int WARN_ON (int) ;
 int memcpy (int *,void const*,int) ;

void nft_offload_update_dependency(struct nft_offload_ctx *ctx,
       const void *data, u32 len)
{
 switch (ctx->dep.type) {
 case 129:
  WARN_ON(len != sizeof(__u16));
  memcpy(&ctx->dep.l3num, data, sizeof(__u16));
  break;
 case 128:
  WARN_ON(len != sizeof(__u8));
  memcpy(&ctx->dep.protonum, data, sizeof(__u8));
  break;
 default:
  break;
 }
 ctx->dep.type = NFT_OFFLOAD_DEP_UNSPEC;
}

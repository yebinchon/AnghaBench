
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct nft_offload_ctx {TYPE_1__ dep; } ;
typedef enum nft_offload_dep_type { ____Placeholder_nft_offload_dep_type } nft_offload_dep_type ;



void nft_offload_set_dependency(struct nft_offload_ctx *ctx,
    enum nft_offload_dep_type type)
{
 ctx->dep.type = type;
}

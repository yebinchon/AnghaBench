
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cb_list; } ;
struct nft_base_chain {TYPE_1__ flow_block; } ;
struct flow_block_offload {int cb_list; } ;


 int list_splice (int *,int *) ;

__attribute__((used)) static int nft_flow_offload_bind(struct flow_block_offload *bo,
     struct nft_base_chain *basechain)
{
 list_splice(&bo->cb_list, &basechain->flow_block.cb_list);
 return 0;
}

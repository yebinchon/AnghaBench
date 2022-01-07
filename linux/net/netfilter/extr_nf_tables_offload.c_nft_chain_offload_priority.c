
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ priority; } ;
struct nft_base_chain {TYPE_1__ ops; } ;


 scalar_t__ USHRT_MAX ;

int nft_chain_offload_priority(struct nft_base_chain *basechain)
{
 if (basechain->ops.priority <= 0 ||
     basechain->ops.priority > USHRT_MAX)
  return -1;

 return 0;
}

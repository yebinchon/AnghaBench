
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nft_chain {int dummy; } ;
struct TYPE_2__ {int hooknum; } ;
struct nft_base_chain {TYPE_1__ ops; } ;


 int EOPNOTSUPP ;
 struct nft_base_chain* nft_base_chain (struct nft_chain const*) ;
 scalar_t__ nft_is_base_chain (struct nft_chain const*) ;

int nft_chain_validate_hooks(const struct nft_chain *chain,
        unsigned int hook_flags)
{
 struct nft_base_chain *basechain;

 if (nft_is_base_chain(chain)) {
  basechain = nft_base_chain(chain);

  if ((1 << basechain->ops.hooknum) & hook_flags)
   return 0;

  return -EOPNOTSUPP;
 }

 return 0;
}

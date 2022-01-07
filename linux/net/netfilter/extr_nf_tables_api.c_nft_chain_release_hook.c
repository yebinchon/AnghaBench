
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nft_chain_hook {TYPE_1__* type; } ;
struct TYPE_2__ {int owner; } ;


 int module_put (int ) ;

__attribute__((used)) static void nft_chain_release_hook(struct nft_chain_hook *hook)
{
 module_put(hook->type->owner);
}

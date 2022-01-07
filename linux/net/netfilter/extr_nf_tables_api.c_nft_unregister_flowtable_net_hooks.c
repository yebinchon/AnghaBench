
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nft_flowtable {int ops_len; TYPE_1__* ops; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int nf_unregister_net_hook (struct net*,TYPE_1__*) ;

__attribute__((used)) static void nft_unregister_flowtable_net_hooks(struct net *net,
            struct nft_flowtable *flowtable)
{
 int i;

 for (i = 0; i < flowtable->ops_len; i++) {
  if (!flowtable->ops[i].dev)
   continue;

  nf_unregister_net_hook(net, &flowtable->ops[i]);
 }
}

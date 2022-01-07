
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nft_flowtable {int ops_len; TYPE_1__* ops; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {struct net_device* dev; } ;


 int dev_net (struct net_device*) ;
 int nf_unregister_net_hook (int ,TYPE_1__*) ;

__attribute__((used)) static void nft_flowtable_event(unsigned long event, struct net_device *dev,
    struct nft_flowtable *flowtable)
{
 int i;

 for (i = 0; i < flowtable->ops_len; i++) {
  if (flowtable->ops[i].dev != dev)
   continue;

  nf_unregister_net_hook(dev_net(dev), &flowtable->ops[i]);
  flowtable->ops[i].dev = ((void*)0);
  break;
 }
}

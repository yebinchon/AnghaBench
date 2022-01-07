
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct batadv_hard_iface {int * debug_dir; int net_dev; } ;


 scalar_t__ batadv_debugfs ;
 int debugfs_remove_recursive (int *) ;
 struct net* dev_net (int ) ;
 struct net init_net ;

void batadv_debugfs_del_hardif(struct batadv_hard_iface *hard_iface)
{
 struct net *net = dev_net(hard_iface->net_dev);

 if (net != &init_net)
  return;

 if (batadv_debugfs) {
  debugfs_remove_recursive(hard_iface->debug_dir);
  hard_iface->debug_dir = ((void*)0);
 }
}

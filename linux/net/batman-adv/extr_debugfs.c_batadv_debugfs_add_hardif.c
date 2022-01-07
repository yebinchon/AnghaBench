
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net {int dummy; } ;
struct batadv_hard_iface {TYPE_2__* net_dev; int debug_dir; } ;
struct TYPE_4__ {int mode; int name; } ;
struct batadv_debuginfo {int fops; TYPE_1__ attr; } ;
struct TYPE_5__ {int name; } ;


 int S_IFREG ;
 int batadv_debugfs ;
 struct batadv_debuginfo** batadv_hardif_debuginfos ;
 int debugfs_create_dir (int ,int ) ;
 int debugfs_create_file (int ,int,int ,TYPE_2__*,int *) ;
 struct net* dev_net (TYPE_2__*) ;
 struct net init_net ;

void batadv_debugfs_add_hardif(struct batadv_hard_iface *hard_iface)
{
 struct net *net = dev_net(hard_iface->net_dev);
 struct batadv_debuginfo **bat_debug;

 if (net != &init_net)
  return;

 hard_iface->debug_dir = debugfs_create_dir(hard_iface->net_dev->name,
         batadv_debugfs);

 for (bat_debug = batadv_hardif_debuginfos; *bat_debug; ++bat_debug)
  debugfs_create_file(((*bat_debug)->attr).name,
        S_IFREG | ((*bat_debug)->attr).mode,
        hard_iface->debug_dir, hard_iface->net_dev,
        &(*bat_debug)->fops);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct batadv_hard_iface {int if_status; TYPE_1__* soft_iface; } ;
struct TYPE_2__ {char* name; } ;


 int ASSERT_RTNL () ;
 int BATADV_IF_CLEANUP_AUTO ;
 int BATADV_IF_I_WANT_YOU ;
 int BATADV_IF_NOT_IN_USE ;
 int IFNAMSIZ ;
 int batadv_hardif_disable_interface (struct batadv_hard_iface*,int ) ;
 int batadv_hardif_enable_interface (struct batadv_hard_iface*,struct net*,char*) ;
 struct batadv_hard_iface* batadv_hardif_get_by_netdev (struct net_device*) ;
 int batadv_hardif_put (struct batadv_hard_iface*) ;
 struct net* dev_net (struct net_device*) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static int batadv_store_mesh_iface_finish(struct net_device *net_dev,
       char ifname[IFNAMSIZ])
{
 struct net *net = dev_net(net_dev);
 struct batadv_hard_iface *hard_iface;
 int status_tmp;
 int ret = 0;

 ASSERT_RTNL();

 hard_iface = batadv_hardif_get_by_netdev(net_dev);
 if (!hard_iface)
  return 0;

 if (strncmp(ifname, "none", 4) == 0)
  status_tmp = BATADV_IF_NOT_IN_USE;
 else
  status_tmp = BATADV_IF_I_WANT_YOU;

 if (hard_iface->if_status == status_tmp)
  goto out;

 if (hard_iface->soft_iface &&
     strncmp(hard_iface->soft_iface->name, ifname, IFNAMSIZ) == 0)
  goto out;

 if (status_tmp == BATADV_IF_NOT_IN_USE) {
  batadv_hardif_disable_interface(hard_iface,
      BATADV_IF_CLEANUP_AUTO);
  goto out;
 }


 if (hard_iface->if_status != BATADV_IF_NOT_IN_USE)
  batadv_hardif_disable_interface(hard_iface,
      BATADV_IF_CLEANUP_AUTO);

 ret = batadv_hardif_enable_interface(hard_iface, net, ifname);
out:
 batadv_hardif_put(hard_iface);
 return ret;
}

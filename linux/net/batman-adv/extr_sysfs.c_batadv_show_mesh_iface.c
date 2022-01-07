
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct kobject {int dummy; } ;
struct batadv_hard_iface {scalar_t__ if_status; TYPE_1__* soft_iface; } ;
struct attribute {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {char* name; } ;


 scalar_t__ BATADV_IF_NOT_IN_USE ;
 struct batadv_hard_iface* batadv_hardif_get_by_netdev (struct net_device*) ;
 int batadv_hardif_put (struct batadv_hard_iface*) ;
 struct net_device* batadv_kobj_to_netdev (struct kobject*) ;
 int batadv_sysfs_deprecated (struct attribute*) ;
 int sprintf (char*,char*,char const*) ;

__attribute__((used)) static ssize_t batadv_show_mesh_iface(struct kobject *kobj,
          struct attribute *attr, char *buff)
{
 struct net_device *net_dev = batadv_kobj_to_netdev(kobj);
 struct batadv_hard_iface *hard_iface;
 ssize_t length;
 const char *ifname;

 batadv_sysfs_deprecated(attr);

 hard_iface = batadv_hardif_get_by_netdev(net_dev);
 if (!hard_iface)
  return 0;

 if (hard_iface->if_status == BATADV_IF_NOT_IN_USE)
  ifname = "none";
 else
  ifname = hard_iface->soft_iface->name;

 length = sprintf(buff, "%s\n", ifname);

 batadv_hardif_put(hard_iface);

 return length;
}

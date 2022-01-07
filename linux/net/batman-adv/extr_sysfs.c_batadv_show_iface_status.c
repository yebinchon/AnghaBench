
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct kobject {int dummy; } ;
struct batadv_hard_iface {int if_status; } ;
struct attribute {int dummy; } ;
typedef int ssize_t ;







 struct batadv_hard_iface* batadv_hardif_get_by_netdev (struct net_device*) ;
 int batadv_hardif_put (struct batadv_hard_iface*) ;
 struct net_device* batadv_kobj_to_netdev (struct kobject*) ;
 int batadv_sysfs_deprecated (struct attribute*) ;
 int sprintf (char*,char*) ;

__attribute__((used)) static ssize_t batadv_show_iface_status(struct kobject *kobj,
     struct attribute *attr, char *buff)
{
 struct net_device *net_dev = batadv_kobj_to_netdev(kobj);
 struct batadv_hard_iface *hard_iface;
 ssize_t length;

 batadv_sysfs_deprecated(attr);

 hard_iface = batadv_hardif_get_by_netdev(net_dev);
 if (!hard_iface)
  return 0;

 switch (hard_iface->if_status) {
 case 128:
  length = sprintf(buff, "disabling\n");
  break;
 case 131:
  length = sprintf(buff, "inactive\n");
  break;
 case 132:
  length = sprintf(buff, "active\n");
  break;
 case 129:
  length = sprintf(buff, "enabling\n");
  break;
 case 130:
 default:
  length = sprintf(buff, "not in use\n");
  break;
 }

 batadv_hardif_put(hard_iface);

 return length;
}

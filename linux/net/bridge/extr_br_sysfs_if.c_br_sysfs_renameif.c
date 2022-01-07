
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_bridge_port {TYPE_1__* dev; int sysfs_name; int kobj; struct net_bridge* br; } ;
struct net_bridge {int dev; int ifobj; } ;
struct TYPE_2__ {int name; } ;


 int IFNAMSIZ ;
 int netdev_notice (int ,char*,int ,int ) ;
 int strlcpy (int ,int ,int ) ;
 int strncmp (int ,int ,int ) ;
 int sysfs_rename_link (int ,int *,int ,int ) ;

int br_sysfs_renameif(struct net_bridge_port *p)
{
 struct net_bridge *br = p->br;
 int err;




 if (!strncmp(p->sysfs_name, p->dev->name, IFNAMSIZ))
  return 0;

 err = sysfs_rename_link(br->ifobj, &p->kobj,
    p->sysfs_name, p->dev->name);
 if (err)
  netdev_notice(br->dev, "unable to rename link %s to %s",
         p->sysfs_name, p->dev->name);
 else
  strlcpy(p->sysfs_name, p->dev->name, IFNAMSIZ);

 return err;
}

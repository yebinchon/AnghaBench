
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_bridge_port {int sysfs_name; int kobj; TYPE_3__* dev; struct net_bridge* br; } ;
struct net_bridge {int * ifobj; TYPE_2__* dev; } ;
struct brport_attribute {int attr; } ;
struct TYPE_6__ {int name; } ;
struct TYPE_4__ {int kobj; } ;
struct TYPE_5__ {TYPE_1__ dev; } ;


 int IFNAMSIZ ;
 int SYSFS_BRIDGE_PORT_LINK ;
 struct brport_attribute** brport_attrs ;
 int strlcpy (int ,int ,int ) ;
 int sysfs_create_file (int *,int *) ;
 int sysfs_create_link (int *,int *,int ) ;

int br_sysfs_addif(struct net_bridge_port *p)
{
 struct net_bridge *br = p->br;
 const struct brport_attribute **a;
 int err;

 err = sysfs_create_link(&p->kobj, &br->dev->dev.kobj,
    SYSFS_BRIDGE_PORT_LINK);
 if (err)
  return err;

 for (a = brport_attrs; *a; ++a) {
  err = sysfs_create_file(&p->kobj, &((*a)->attr));
  if (err)
   return err;
 }

 strlcpy(p->sysfs_name, p->dev->name, IFNAMSIZ);
 return sysfs_create_link(br->ifobj, &p->kobj, p->sysfs_name);
}

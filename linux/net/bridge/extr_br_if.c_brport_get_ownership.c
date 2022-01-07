
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge_port {int dev; } ;
struct kobject {int dummy; } ;
typedef int kuid_t ;
typedef int kgid_t ;


 int dev_net (int ) ;
 struct net_bridge_port* kobj_to_brport (struct kobject*) ;
 int net_ns_get_ownership (int ,int *,int *) ;

__attribute__((used)) static void brport_get_ownership(struct kobject *kobj, kuid_t *uid, kgid_t *gid)
{
 struct net_bridge_port *p = kobj_to_brport(kobj);

 net_ns_get_ownership(dev_net(p->dev), uid, gid);
}

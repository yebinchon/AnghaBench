
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge_port {int dummy; } ;
struct kobject {int dummy; } ;
struct brport_attribute {int (* show ) (struct net_bridge_port*,char*) ;} ;
struct attribute {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 struct net_bridge_port* kobj_to_brport (struct kobject*) ;
 int stub1 (struct net_bridge_port*,char*) ;
 struct brport_attribute* to_brport_attr (struct attribute*) ;

__attribute__((used)) static ssize_t brport_show(struct kobject *kobj,
      struct attribute *attr, char *buf)
{
 struct brport_attribute *brport_attr = to_brport_attr(attr);
 struct net_bridge_port *p = kobj_to_brport(kobj);

 if (!brport_attr->show)
  return -EINVAL;

 return brport_attr->show(p, buf);
}

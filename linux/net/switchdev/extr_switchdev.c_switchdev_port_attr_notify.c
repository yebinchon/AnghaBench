
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switchdev_trans {int dummy; } ;
struct switchdev_notifier_port_attr_info {int handled; int info; struct switchdev_trans* trans; struct switchdev_attr const* attr; } ;
struct switchdev_attr {int dummy; } ;
struct net_device {int dummy; } ;
typedef enum switchdev_notifier_type { ____Placeholder_switchdev_notifier_type } switchdev_notifier_type ;


 int EOPNOTSUPP ;
 int WARN_ON (int) ;
 int call_switchdev_blocking_notifiers (int,struct net_device*,int *,int *) ;
 int notifier_to_errno (int) ;

__attribute__((used)) static int switchdev_port_attr_notify(enum switchdev_notifier_type nt,
          struct net_device *dev,
          const struct switchdev_attr *attr,
          struct switchdev_trans *trans)
{
 int err;
 int rc;

 struct switchdev_notifier_port_attr_info attr_info = {
  .attr = attr,
  .trans = trans,
  .handled = 0,
 };

 rc = call_switchdev_blocking_notifiers(nt, dev,
            &attr_info.info, ((void*)0));
 err = notifier_to_errno(rc);
 if (err) {
  WARN_ON(!attr_info.handled);
  return err;
 }

 if (!attr_info.handled)
  return -EOPNOTSUPP;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switchdev_notifier_port_obj_info {int dummy; } ;
struct net_device {int dummy; } ;


 int EOPNOTSUPP ;
 int __switchdev_handle_port_obj_del (struct net_device*,struct switchdev_notifier_port_obj_info*,int (*) (struct net_device const*),int (*) (struct net_device*,struct switchdev_obj const*)) ;

int switchdev_handle_port_obj_del(struct net_device *dev,
   struct switchdev_notifier_port_obj_info *port_obj_info,
   bool (*check_cb)(const struct net_device *dev),
   int (*del_cb)(struct net_device *dev,
          const struct switchdev_obj *obj))
{
 int err;

 err = __switchdev_handle_port_obj_del(dev, port_obj_info, check_cb,
           del_cb);
 if (err == -EOPNOTSUPP)
  err = 0;
 return err;
}

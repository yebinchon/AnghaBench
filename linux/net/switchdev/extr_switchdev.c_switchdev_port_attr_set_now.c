
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switchdev_trans {int ph_prepare; } ;
struct switchdev_attr {int id; } ;
struct net_device {int name; } ;


 int SWITCHDEV_PORT_ATTR_SET ;
 int WARN (int,char*,int ,int ) ;
 int switchdev_port_attr_notify (int ,struct net_device*,struct switchdev_attr const*,struct switchdev_trans*) ;

__attribute__((used)) static int switchdev_port_attr_set_now(struct net_device *dev,
           const struct switchdev_attr *attr)
{
 struct switchdev_trans trans;
 int err;
 trans.ph_prepare = 1;
 err = switchdev_port_attr_notify(SWITCHDEV_PORT_ATTR_SET, dev, attr,
      &trans);
 if (err)
  return err;






 trans.ph_prepare = 0;
 err = switchdev_port_attr_notify(SWITCHDEV_PORT_ATTR_SET, dev, attr,
      &trans);
 WARN(err, "%s: Commit of attribute (id=%d) failed.\n",
      dev->name, attr->id);

 return err;
}

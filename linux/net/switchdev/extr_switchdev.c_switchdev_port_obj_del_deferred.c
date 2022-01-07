
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switchdev_obj {int complete_priv; int (* complete ) (struct net_device*,int,int ) ;int id; } ;
struct net_device {int dummy; } ;


 int EOPNOTSUPP ;
 int netdev_err (struct net_device*,char*,int,int ) ;
 int stub1 (struct net_device*,int,int ) ;
 int switchdev_port_obj_del_now (struct net_device*,struct switchdev_obj const*) ;

__attribute__((used)) static void switchdev_port_obj_del_deferred(struct net_device *dev,
         const void *data)
{
 const struct switchdev_obj *obj = data;
 int err;

 err = switchdev_port_obj_del_now(dev, obj);
 if (err && err != -EOPNOTSUPP)
  netdev_err(dev, "failed (err=%d) to del object (id=%d)\n",
      err, obj->id);
 if (obj->complete)
  obj->complete(dev, err, obj->complete_priv);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switchdev_attr {int complete_priv; int (* complete ) (struct net_device*,int,int ) ;int id; } ;
struct net_device {int dummy; } ;


 int EOPNOTSUPP ;
 int netdev_err (struct net_device*,char*,int,int ) ;
 int stub1 (struct net_device*,int,int ) ;
 int switchdev_port_attr_set_now (struct net_device*,struct switchdev_attr const*) ;

__attribute__((used)) static void switchdev_port_attr_set_deferred(struct net_device *dev,
          const void *data)
{
 const struct switchdev_attr *attr = data;
 int err;

 err = switchdev_port_attr_set_now(dev, attr);
 if (err && err != -EOPNOTSUPP)
  netdev_err(dev, "failed (err=%d) to set attribute (id=%d)\n",
      err, attr->id);
 if (attr->complete)
  attr->complete(dev, err, attr->complete_priv);
}

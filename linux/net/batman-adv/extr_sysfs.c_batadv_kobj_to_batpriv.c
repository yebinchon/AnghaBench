
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct kobject {int dummy; } ;
struct batadv_priv {int dummy; } ;


 struct net_device* batadv_kobj_to_netdev (struct kobject*) ;
 struct batadv_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static struct batadv_priv *batadv_kobj_to_batpriv(struct kobject *obj)
{
 struct net_device *net_dev = batadv_kobj_to_netdev(obj);

 return netdev_priv(net_dev);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct batadv_priv {int * mesh_obj; } ;
struct batadv_attribute {int attr; } ;


 int KOBJ_REMOVE ;
 struct batadv_attribute** batadv_mesh_attrs ;
 int kobject_del (int *) ;
 int kobject_put (int *) ;
 int kobject_uevent (int *,int ) ;
 struct batadv_priv* netdev_priv (struct net_device*) ;
 int sysfs_remove_file (int *,int *) ;

void batadv_sysfs_del_meshif(struct net_device *dev)
{
 struct batadv_priv *bat_priv = netdev_priv(dev);
 struct batadv_attribute **bat_attr;

 for (bat_attr = batadv_mesh_attrs; *bat_attr; ++bat_attr)
  sysfs_remove_file(bat_priv->mesh_obj, &((*bat_attr)->attr));

 kobject_uevent(bat_priv->mesh_obj, KOBJ_REMOVE);
 kobject_del(bat_priv->mesh_obj);
 kobject_put(bat_priv->mesh_obj);
 bat_priv->mesh_obj = ((void*)0);
}

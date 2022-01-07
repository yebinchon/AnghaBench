
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct TYPE_4__ {struct kobject kobj; } ;
struct net_device {int name; TYPE_1__ dev; } ;
struct batadv_priv {int * mesh_obj; } ;
struct TYPE_5__ {int name; } ;
struct batadv_attribute {TYPE_2__ attr; } ;


 int BATADV_SYSFS_IF_MESH_SUBDIR ;
 int ENOMEM ;
 int KOBJ_REMOVE ;
 int batadv_err (struct net_device*,char*,int ,int ,...) ;
 struct batadv_attribute** batadv_mesh_attrs ;
 int * kobject_create_and_add (int ,struct kobject*) ;
 int kobject_del (int *) ;
 int kobject_put (int *) ;
 int kobject_uevent (int *,int ) ;
 struct batadv_priv* netdev_priv (struct net_device*) ;
 int sysfs_create_file (int *,TYPE_2__*) ;
 int sysfs_remove_file (int *,TYPE_2__*) ;

int batadv_sysfs_add_meshif(struct net_device *dev)
{
 struct kobject *batif_kobject = &dev->dev.kobj;
 struct batadv_priv *bat_priv = netdev_priv(dev);
 struct batadv_attribute **bat_attr;
 int err;

 bat_priv->mesh_obj = kobject_create_and_add(BATADV_SYSFS_IF_MESH_SUBDIR,
          batif_kobject);
 if (!bat_priv->mesh_obj) {
  batadv_err(dev, "Can't add sysfs directory: %s/%s\n", dev->name,
      BATADV_SYSFS_IF_MESH_SUBDIR);
  goto out;
 }

 for (bat_attr = batadv_mesh_attrs; *bat_attr; ++bat_attr) {
  err = sysfs_create_file(bat_priv->mesh_obj,
     &((*bat_attr)->attr));
  if (err) {
   batadv_err(dev, "Can't add sysfs file: %s/%s/%s\n",
       dev->name, BATADV_SYSFS_IF_MESH_SUBDIR,
       ((*bat_attr)->attr).name);
   goto rem_attr;
  }
 }

 return 0;

rem_attr:
 for (bat_attr = batadv_mesh_attrs; *bat_attr; ++bat_attr)
  sysfs_remove_file(bat_priv->mesh_obj, &((*bat_attr)->attr));

 kobject_uevent(bat_priv->mesh_obj, KOBJ_REMOVE);
 kobject_del(bat_priv->mesh_obj);
 kobject_put(bat_priv->mesh_obj);
 bat_priv->mesh_obj = ((void*)0);
out:
 return -ENOMEM;
}

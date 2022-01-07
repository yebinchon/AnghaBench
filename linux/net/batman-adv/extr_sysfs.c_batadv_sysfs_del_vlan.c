
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_softif_vlan {int * kobj; } ;
struct batadv_priv {int * mesh_obj; } ;
struct batadv_attribute {int attr; } ;


 int KOBJ_REMOVE ;
 struct batadv_attribute** batadv_vlan_attrs ;
 int kobject_del (int *) ;
 int kobject_put (int *) ;
 int kobject_uevent (int *,int ) ;
 int sysfs_remove_file (int *,int *) ;

void batadv_sysfs_del_vlan(struct batadv_priv *bat_priv,
      struct batadv_softif_vlan *vlan)
{
 struct batadv_attribute **bat_attr;

 for (bat_attr = batadv_vlan_attrs; *bat_attr; ++bat_attr)
  sysfs_remove_file(vlan->kobj, &((*bat_attr)->attr));

 if (vlan->kobj != bat_priv->mesh_obj) {
  kobject_uevent(vlan->kobj, KOBJ_REMOVE);
  kobject_del(vlan->kobj);
 }
 kobject_put(vlan->kobj);
 vlan->kobj = ((void*)0);
}

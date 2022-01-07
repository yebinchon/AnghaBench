
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {struct kobject* parent; int name; } ;
struct batadv_priv {int dummy; } ;


 int BATADV_SYSFS_IF_MESH_SUBDIR ;
 struct batadv_priv* batadv_kobj_to_batpriv (struct kobject*) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static struct batadv_priv *batadv_vlan_kobj_to_batpriv(struct kobject *obj)
{



 if (!strcmp(BATADV_SYSFS_IF_MESH_SUBDIR, obj->name))
  return batadv_kobj_to_batpriv(obj);




 return batadv_kobj_to_batpriv(obj->parent);
}

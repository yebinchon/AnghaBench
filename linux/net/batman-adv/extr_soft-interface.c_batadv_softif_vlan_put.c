
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_softif_vlan {int refcount; } ;


 int batadv_softif_vlan_release ;
 int kref_put (int *,int ) ;

void batadv_softif_vlan_put(struct batadv_softif_vlan *vlan)
{
 if (!vlan)
  return;

 kref_put(&vlan->refcount, batadv_softif_vlan_release);
}

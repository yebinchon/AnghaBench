
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlan_group {int ** vlan_devices_arrays; } ;


 int VLAN_GROUP_ARRAY_SPLIT_PARTS ;
 int VLAN_PROTO_NUM ;
 int kfree (int ) ;

__attribute__((used)) static void vlan_group_free(struct vlan_group *grp)
{
 int i, j;

 for (i = 0; i < VLAN_PROTO_NUM; i++)
  for (j = 0; j < VLAN_GROUP_ARRAY_SPLIT_PARTS; j++)
   kfree(grp->vlan_devices_arrays[i][j]);
}

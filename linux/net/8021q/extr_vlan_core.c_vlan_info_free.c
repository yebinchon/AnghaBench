
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlan_info {int grp; } ;


 int kfree (struct vlan_info*) ;
 int vlan_group_free (int *) ;

__attribute__((used)) static void vlan_info_free(struct vlan_info *vlan_info)
{
 vlan_group_free(&vlan_info->grp);
 kfree(vlan_info);
}

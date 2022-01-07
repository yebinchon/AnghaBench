
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlan_info {int vid_list; struct net_device* real_dev; } ;
struct net_device {int dummy; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct vlan_info* kzalloc (int,int ) ;

__attribute__((used)) static struct vlan_info *vlan_info_alloc(struct net_device *dev)
{
 struct vlan_info *vlan_info;

 vlan_info = kzalloc(sizeof(struct vlan_info), GFP_KERNEL);
 if (!vlan_info)
  return ((void*)0);

 vlan_info->real_dev = dev;
 INIT_LIST_HEAD(&vlan_info->vid_list);
 return vlan_info;
}

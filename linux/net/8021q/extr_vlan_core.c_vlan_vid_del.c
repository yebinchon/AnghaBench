
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vlan_vid_info {scalar_t__ refcount; } ;
struct vlan_info {scalar_t__ nr_vids; int rcu; } ;
struct net_device {int vlan_info; } ;
typedef int __be16 ;


 int ASSERT_RTNL () ;
 int RCU_INIT_POINTER (int ,int *) ;
 int __vlan_vid_del (struct vlan_info*,struct vlan_vid_info*) ;
 int call_rcu (int *,int ) ;
 struct vlan_info* rtnl_dereference (int ) ;
 int vlan_info_rcu_free ;
 struct vlan_vid_info* vlan_vid_info_get (struct vlan_info*,int ,int ) ;

void vlan_vid_del(struct net_device *dev, __be16 proto, u16 vid)
{
 struct vlan_info *vlan_info;
 struct vlan_vid_info *vid_info;

 ASSERT_RTNL();

 vlan_info = rtnl_dereference(dev->vlan_info);
 if (!vlan_info)
  return;

 vid_info = vlan_vid_info_get(vlan_info, proto, vid);
 if (!vid_info)
  return;
 vid_info->refcount--;
 if (vid_info->refcount == 0) {
  __vlan_vid_del(vlan_info, vid_info);
  if (vlan_info->nr_vids == 0) {
   RCU_INIT_POINTER(dev->vlan_info, ((void*)0));
   call_rcu(&vlan_info->rcu, vlan_info_rcu_free);
  }
 }
}

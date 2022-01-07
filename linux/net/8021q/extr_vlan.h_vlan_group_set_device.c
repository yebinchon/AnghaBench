
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct vlan_group {struct net_device**** vlan_devices_arrays; } ;
struct net_device {int dummy; } ;
typedef int __be16 ;


 size_t VLAN_GROUP_ARRAY_PART_LEN ;
 size_t vlan_proto_idx (int ) ;

__attribute__((used)) static inline void vlan_group_set_device(struct vlan_group *vg,
      __be16 vlan_proto, u16 vlan_id,
      struct net_device *dev)
{
 struct net_device **array;
 if (!vg)
  return;
 array = vg->vlan_devices_arrays[vlan_proto_idx(vlan_proto)]
           [vlan_id / VLAN_GROUP_ARRAY_PART_LEN];
 array[vlan_id % VLAN_GROUP_ARRAY_PART_LEN] = dev;
}

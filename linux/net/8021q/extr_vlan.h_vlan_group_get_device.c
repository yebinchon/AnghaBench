
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vlan_group {int dummy; } ;
struct net_device {int dummy; } ;
typedef int __be16 ;


 struct net_device* __vlan_group_get_device (struct vlan_group*,int ,int ) ;
 int vlan_proto_idx (int ) ;

__attribute__((used)) static inline struct net_device *vlan_group_get_device(struct vlan_group *vg,
             __be16 vlan_proto,
             u16 vlan_id)
{
 return __vlan_group_get_device(vg, vlan_proto_idx(vlan_proto), vlan_id);
}

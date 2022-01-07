
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct net_bridge_vlan_group {int tunnel_hash; } ;
struct TYPE_6__ {int tunnel_id; struct metadata_dst* tunnel_dst; } ;
struct net_bridge_vlan {TYPE_3__ tinfo; int tnode; } ;
struct TYPE_4__ {int mode; } ;
struct TYPE_5__ {TYPE_1__ tun_info; } ;
struct metadata_dst {int dst; TYPE_2__ u; } ;
typedef int __be64 ;


 int EEXIST ;
 int EINVAL ;
 int IP_TUNNEL_INFO_BRIDGE ;
 int IP_TUNNEL_INFO_TX ;
 int TUNNEL_KEY ;
 struct metadata_dst* __ip_tun_set_dst (int ,int ,int ,int ,int ,int ,int ,int ) ;
 int br_vlan_tunnel_rht_params ;
 int cpu_to_be32 (int ) ;
 int dst_release (int *) ;
 int key32_to_tunnel_id (int ) ;
 int rhashtable_lookup_insert_fast (int *,int *,int ) ;

__attribute__((used)) static int __vlan_tunnel_info_add(struct net_bridge_vlan_group *vg,
      struct net_bridge_vlan *vlan, u32 tun_id)
{
 struct metadata_dst *metadata = ((void*)0);
 __be64 key = key32_to_tunnel_id(cpu_to_be32(tun_id));
 int err;

 if (vlan->tinfo.tunnel_dst)
  return -EEXIST;

 metadata = __ip_tun_set_dst(0, 0, 0, 0, 0, TUNNEL_KEY,
        key, 0);
 if (!metadata)
  return -EINVAL;

 metadata->u.tun_info.mode |= IP_TUNNEL_INFO_TX | IP_TUNNEL_INFO_BRIDGE;
 vlan->tinfo.tunnel_dst = metadata;
 vlan->tinfo.tunnel_id = key;

 err = rhashtable_lookup_insert_fast(&vg->tunnel_hash, &vlan->tnode,
         br_vlan_tunnel_rht_params);
 if (err)
  goto out;

 return 0;
out:
 dst_release(&vlan->tinfo.tunnel_dst->dst);
 vlan->tinfo.tunnel_dst = ((void*)0);
 vlan->tinfo.tunnel_id = 0;

 return err;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tunnel_id; } ;
struct net_bridge_vlan {TYPE_1__ tinfo; } ;
typedef int __be32 ;


 int be32_to_cpu (int ) ;
 int tunnel_id_to_key32 (int ) ;

__attribute__((used)) static bool vlan_tunid_inrange(struct net_bridge_vlan *v_curr,
          struct net_bridge_vlan *v_last)
{
 __be32 tunid_curr = tunnel_id_to_key32(v_curr->tinfo.tunnel_id);
 __be32 tunid_last = tunnel_id_to_key32(v_last->tinfo.tunnel_id);

 return (be32_to_cpu(tunid_curr) - be32_to_cpu(tunid_last)) == 1;
}

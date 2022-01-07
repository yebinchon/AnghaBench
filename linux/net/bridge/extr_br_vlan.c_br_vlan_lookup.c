
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rhashtable {int dummy; } ;
struct net_bridge_vlan {int dummy; } ;


 int br_vlan_rht_params ;
 struct net_bridge_vlan* rhashtable_lookup_fast (struct rhashtable*,int *,int ) ;

__attribute__((used)) static struct net_bridge_vlan *br_vlan_lookup(struct rhashtable *tbl, u16 vid)
{
 return rhashtable_lookup_fast(tbl, &vid, br_vlan_rht_params);
}

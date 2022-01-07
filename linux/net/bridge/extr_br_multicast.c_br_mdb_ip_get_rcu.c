
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge_mdb_entry {int dummy; } ;
struct net_bridge {int mdb_hash_tbl; } ;
struct br_ip {int dummy; } ;


 int br_mdb_rht_params ;
 struct net_bridge_mdb_entry* rhashtable_lookup (int *,struct br_ip*,int ) ;

__attribute__((used)) static struct net_bridge_mdb_entry *br_mdb_ip_get_rcu(struct net_bridge *br,
            struct br_ip *dst)
{
 return rhashtable_lookup(&br->mdb_hash_tbl, dst, br_mdb_rht_params);
}

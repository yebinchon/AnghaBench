
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge_mdb_entry {int dummy; } ;
struct net_bridge {int mdb_hash_tbl; int multicast_lock; } ;
struct br_ip {int dummy; } ;


 int br_mdb_rht_params ;
 int lockdep_assert_held_once (int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct net_bridge_mdb_entry* rhashtable_lookup (int *,struct br_ip*,int ) ;

struct net_bridge_mdb_entry *br_mdb_ip_get(struct net_bridge *br,
        struct br_ip *dst)
{
 struct net_bridge_mdb_entry *ent;

 lockdep_assert_held_once(&br->multicast_lock);

 rcu_read_lock();
 ent = rhashtable_lookup(&br->mdb_hash_tbl, dst, br_mdb_rht_params);
 rcu_read_unlock();

 return ent;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct br_ip {int dummy; } ;
struct net_bridge_mdb_entry {int mdb_node; int rhnode; int timer; struct br_ip addr; struct net_bridge* br; } ;
struct TYPE_2__ {int nelems; } ;
struct net_bridge {scalar_t__ hash_max; int mdb_list; TYPE_1__ mdb_hash_tbl; } ;


 int BROPT_MULTICAST_ENABLED ;
 int E2BIG ;
 int ENOMEM ;
 struct net_bridge_mdb_entry* ERR_PTR (int) ;
 int GFP_ATOMIC ;
 scalar_t__ atomic_read (int *) ;
 struct net_bridge_mdb_entry* br_mdb_ip_get (struct net_bridge*,struct br_ip*) ;
 int br_mdb_rht_params ;
 int br_multicast_group_expired ;
 int br_opt_toggle (struct net_bridge*,int ,int) ;
 int hlist_add_head_rcu (int *,int *) ;
 int kfree (struct net_bridge_mdb_entry*) ;
 struct net_bridge_mdb_entry* kzalloc (int,int ) ;
 int rhashtable_lookup_insert_fast (TYPE_1__*,int *,int ) ;
 int timer_setup (int *,int ,int ) ;
 scalar_t__ unlikely (int) ;

struct net_bridge_mdb_entry *br_multicast_new_group(struct net_bridge *br,
          struct br_ip *group)
{
 struct net_bridge_mdb_entry *mp;
 int err;

 mp = br_mdb_ip_get(br, group);
 if (mp)
  return mp;

 if (atomic_read(&br->mdb_hash_tbl.nelems) >= br->hash_max) {
  br_opt_toggle(br, BROPT_MULTICAST_ENABLED, 0);
  return ERR_PTR(-E2BIG);
 }

 mp = kzalloc(sizeof(*mp), GFP_ATOMIC);
 if (unlikely(!mp))
  return ERR_PTR(-ENOMEM);

 mp->br = br;
 mp->addr = *group;
 timer_setup(&mp->timer, br_multicast_group_expired, 0);
 err = rhashtable_lookup_insert_fast(&br->mdb_hash_tbl, &mp->rhnode,
         br_mdb_rht_params);
 if (err) {
  kfree(mp);
  mp = ERR_PTR(err);
 } else {
  hlist_add_head_rcu(&mp->mdb_node, &br->mdb_list);
 }

 return mp;
}

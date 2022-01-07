
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct net_bridge_mdb_entry {int mdb_node; int rhnode; scalar_t__ ports; int timer; struct net_bridge* br; } ;
struct net_bridge {int multicast_lock; int mdb_hash_tbl; int dev; } ;


 int br_mdb_rht_params ;
 int br_multicast_host_leave (struct net_bridge_mdb_entry*,int) ;
 struct net_bridge_mdb_entry* from_timer (int ,struct timer_list*,int ) ;
 int hlist_del_rcu (int *) ;
 int kfree_rcu (struct net_bridge_mdb_entry*,int ) ;
 struct net_bridge_mdb_entry* mp ;
 int netif_running (int ) ;
 int rcu ;
 int rhashtable_remove_fast (int *,int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int timer ;
 scalar_t__ timer_pending (int *) ;

__attribute__((used)) static void br_multicast_group_expired(struct timer_list *t)
{
 struct net_bridge_mdb_entry *mp = from_timer(mp, t, timer);
 struct net_bridge *br = mp->br;

 spin_lock(&br->multicast_lock);
 if (!netif_running(br->dev) || timer_pending(&mp->timer))
  goto out;

 br_multicast_host_leave(mp, 1);

 if (mp->ports)
  goto out;

 rhashtable_remove_fast(&br->mdb_hash_tbl, &mp->rhnode,
          br_mdb_rht_params);
 hlist_del_rcu(&mp->mdb_node);

 kfree_rcu(mp, rcu);

out:
 spin_unlock(&br->multicast_lock);
}

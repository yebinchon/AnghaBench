
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct net_bridge_port {scalar_t__ state; TYPE_1__* dev; } ;
struct net_bridge_fdb_entry {int is_local; int added_by_external_learn; unsigned long updated; int added_by_user; struct net_bridge_port* dst; int is_sticky; } ;
struct net_bridge {int hash_lock; int fdb_hash_tbl; } ;
struct TYPE_2__ {int name; } ;


 scalar_t__ BR_STATE_FORWARDING ;
 scalar_t__ BR_STATE_LEARNING ;
 int RTM_NEWNEIGH ;
 int br_warn (struct net_bridge*,char*,int ,unsigned char const*,int ) ;
 struct net_bridge_fdb_entry* fdb_create (struct net_bridge*,struct net_bridge_port*,unsigned char const*,int ,int ,int ) ;
 struct net_bridge_fdb_entry* fdb_find_rcu (int *,unsigned char const*,int ) ;
 int fdb_notify (struct net_bridge*,struct net_bridge_fdb_entry*,int ,int) ;
 scalar_t__ hold_time (struct net_bridge*) ;
 unsigned long jiffies ;
 scalar_t__ likely (struct net_bridge_fdb_entry*) ;
 scalar_t__ net_ratelimit () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_br_fdb_update (struct net_bridge*,struct net_bridge_port*,unsigned char const*,int ,int) ;
 scalar_t__ unlikely (int) ;

void br_fdb_update(struct net_bridge *br, struct net_bridge_port *source,
     const unsigned char *addr, u16 vid, bool added_by_user)
{
 struct net_bridge_fdb_entry *fdb;
 bool fdb_modified = 0;


 if (hold_time(br) == 0)
  return;


 if (!(source->state == BR_STATE_LEARNING ||
       source->state == BR_STATE_FORWARDING))
  return;

 fdb = fdb_find_rcu(&br->fdb_hash_tbl, addr, vid);
 if (likely(fdb)) {

  if (unlikely(fdb->is_local)) {
   if (net_ratelimit())
    br_warn(br, "received packet on %s with own address as source address (addr:%pM, vlan:%u)\n",
     source->dev->name, addr, vid);
  } else {
   unsigned long now = jiffies;


   if (unlikely(source != fdb->dst && !fdb->is_sticky)) {
    fdb->dst = source;
    fdb_modified = 1;

    if (unlikely(fdb->added_by_external_learn))
     fdb->added_by_external_learn = 0;
   }
   if (now != fdb->updated)
    fdb->updated = now;
   if (unlikely(added_by_user))
    fdb->added_by_user = 1;
   if (unlikely(fdb_modified)) {
    trace_br_fdb_update(br, source, addr, vid, added_by_user);
    fdb_notify(br, fdb, RTM_NEWNEIGH, 1);
   }
  }
 } else {
  spin_lock(&br->hash_lock);
  fdb = fdb_create(br, source, addr, vid, 0, 0);
  if (fdb) {
   if (unlikely(added_by_user))
    fdb->added_by_user = 1;
   trace_br_fdb_update(br, source, addr, vid,
         added_by_user);
   fdb_notify(br, fdb, RTM_NEWNEIGH, 1);
  }



  spin_unlock(&br->hash_lock);
 }
}

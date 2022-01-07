
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_bridge_port {int dummy; } ;
struct net_bridge_fdb_entry {int added_by_user; int added_by_external_learn; void* used; struct net_bridge_port* dst; void* updated; } ;
struct net_bridge {int hash_lock; } ;


 int ENOMEM ;
 int RTM_NEWNEIGH ;
 struct net_bridge_fdb_entry* br_fdb_find (struct net_bridge*,unsigned char const*,int ) ;
 struct net_bridge_fdb_entry* fdb_create (struct net_bridge*,struct net_bridge_port*,unsigned char const*,int ,int ,int ) ;
 int fdb_notify (struct net_bridge*,struct net_bridge_fdb_entry*,int ,int) ;
 void* jiffies ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int trace_br_fdb_external_learn_add (struct net_bridge*,struct net_bridge_port*,unsigned char const*,int ) ;

int br_fdb_external_learn_add(struct net_bridge *br, struct net_bridge_port *p,
         const unsigned char *addr, u16 vid,
         bool swdev_notify)
{
 struct net_bridge_fdb_entry *fdb;
 bool modified = 0;
 int err = 0;

 trace_br_fdb_external_learn_add(br, p, addr, vid);

 spin_lock_bh(&br->hash_lock);

 fdb = br_fdb_find(br, addr, vid);
 if (!fdb) {
  fdb = fdb_create(br, p, addr, vid, 0, 0);
  if (!fdb) {
   err = -ENOMEM;
   goto err_unlock;
  }
  if (swdev_notify)
   fdb->added_by_user = 1;
  fdb->added_by_external_learn = 1;
  fdb_notify(br, fdb, RTM_NEWNEIGH, swdev_notify);
 } else {
  fdb->updated = jiffies;

  if (fdb->dst != p) {
   fdb->dst = p;
   modified = 1;
  }

  if (fdb->added_by_external_learn) {

   fdb->used = jiffies;
  } else if (!fdb->added_by_user) {

   fdb->added_by_external_learn = 1;
   modified = 1;
  }

  if (swdev_notify)
   fdb->added_by_user = 1;

  if (modified)
   fdb_notify(br, fdb, RTM_NEWNEIGH, swdev_notify);
 }

err_unlock:
 spin_unlock_bh(&br->hash_lock);

 return err;
}

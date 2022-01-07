
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_bridge_port {int dummy; } ;
struct net_bridge_fdb_entry {scalar_t__ added_by_external_learn; } ;
struct net_bridge {int hash_lock; } ;


 int ENOENT ;
 struct net_bridge_fdb_entry* br_fdb_find (struct net_bridge*,unsigned char const*,int ) ;
 int fdb_delete (struct net_bridge*,struct net_bridge_fdb_entry*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int br_fdb_external_learn_del(struct net_bridge *br, struct net_bridge_port *p,
         const unsigned char *addr, u16 vid,
         bool swdev_notify)
{
 struct net_bridge_fdb_entry *fdb;
 int err = 0;

 spin_lock_bh(&br->hash_lock);

 fdb = br_fdb_find(br, addr, vid);
 if (fdb && fdb->added_by_external_learn)
  fdb_delete(br, fdb, swdev_notify);
 else
  err = -ENOENT;

 spin_unlock_bh(&br->hash_lock);

 return err;
}

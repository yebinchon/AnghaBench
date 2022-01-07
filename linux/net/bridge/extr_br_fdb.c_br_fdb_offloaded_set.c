
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_bridge_port {int dummy; } ;
struct net_bridge_fdb_entry {int offloaded; } ;
struct net_bridge {int hash_lock; } ;


 struct net_bridge_fdb_entry* br_fdb_find (struct net_bridge*,unsigned char const*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void br_fdb_offloaded_set(struct net_bridge *br, struct net_bridge_port *p,
     const unsigned char *addr, u16 vid, bool offloaded)
{
 struct net_bridge_fdb_entry *fdb;

 spin_lock_bh(&br->hash_lock);

 fdb = br_fdb_find(br, addr, vid);
 if (fdb)
  fdb->offloaded = offloaded;

 spin_unlock_bh(&br->hash_lock);
}

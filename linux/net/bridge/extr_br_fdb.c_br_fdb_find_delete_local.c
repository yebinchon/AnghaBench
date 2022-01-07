
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_bridge_port {int dummy; } ;
struct net_bridge_fdb_entry {struct net_bridge_port const* dst; int added_by_user; scalar_t__ is_local; } ;
struct net_bridge {int hash_lock; } ;


 struct net_bridge_fdb_entry* br_fdb_find (struct net_bridge*,unsigned char const*,int ) ;
 int fdb_delete_local (struct net_bridge*,struct net_bridge_port const*,struct net_bridge_fdb_entry*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void br_fdb_find_delete_local(struct net_bridge *br,
         const struct net_bridge_port *p,
         const unsigned char *addr, u16 vid)
{
 struct net_bridge_fdb_entry *f;

 spin_lock_bh(&br->hash_lock);
 f = br_fdb_find(br, addr, vid);
 if (f && f->is_local && !f->added_by_user && f->dst == p)
  fdb_delete_local(br, p, f);
 spin_unlock_bh(&br->hash_lock);
}

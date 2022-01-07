
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_bridge_port {int dummy; } ;
struct net_bridge {int hash_lock; } ;


 int fdb_delete_by_addr_and_port (struct net_bridge*,struct net_bridge_port const*,unsigned char const*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int __br_fdb_delete(struct net_bridge *br,
      const struct net_bridge_port *p,
      const unsigned char *addr, u16 vid)
{
 int err;

 spin_lock_bh(&br->hash_lock);
 err = fdb_delete_by_addr_and_port(br, p, addr, vid);
 spin_unlock_bh(&br->hash_lock);

 return err;
}

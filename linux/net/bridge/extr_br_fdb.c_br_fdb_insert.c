
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_bridge_port {int dummy; } ;
struct net_bridge {int hash_lock; } ;


 int fdb_insert (struct net_bridge*,struct net_bridge_port*,unsigned char const*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int br_fdb_insert(struct net_bridge *br, struct net_bridge_port *source,
    const unsigned char *addr, u16 vid)
{
 int ret;

 spin_lock_bh(&br->hash_lock);
 ret = fdb_insert(br, source, addr, vid);
 spin_unlock_bh(&br->hash_lock);
 return ret;
}

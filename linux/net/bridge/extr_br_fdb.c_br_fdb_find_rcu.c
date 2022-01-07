
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge_fdb_entry {int dummy; } ;
struct net_bridge {int fdb_hash_tbl; } ;
typedef int __u16 ;


 struct net_bridge_fdb_entry* fdb_find_rcu (int *,unsigned char const*,int ) ;

struct net_bridge_fdb_entry *br_fdb_find_rcu(struct net_bridge *br,
          const unsigned char *addr,
          __u16 vid)
{
 return fdb_find_rcu(&br->fdb_hash_tbl, addr, vid);
}

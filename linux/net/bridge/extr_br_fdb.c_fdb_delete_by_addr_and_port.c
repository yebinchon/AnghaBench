
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct net_bridge_port {int dummy; } ;
struct net_bridge_fdb_entry {struct net_bridge_port const* dst; } ;
struct net_bridge {int dummy; } ;


 int ENOENT ;
 struct net_bridge_fdb_entry* br_fdb_find (struct net_bridge*,int const*,int ) ;
 int fdb_delete (struct net_bridge*,struct net_bridge_fdb_entry*,int) ;

__attribute__((used)) static int fdb_delete_by_addr_and_port(struct net_bridge *br,
           const struct net_bridge_port *p,
           const u8 *addr, u16 vlan)
{
 struct net_bridge_fdb_entry *fdb;

 fdb = br_fdb_find(br, addr, vlan);
 if (!fdb || fdb->dst != p)
  return -ENOENT;

 fdb_delete(br, fdb, 1);

 return 0;
}

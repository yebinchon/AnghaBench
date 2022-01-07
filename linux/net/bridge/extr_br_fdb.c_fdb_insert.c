
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct net_bridge_port {TYPE_1__* dev; } ;
struct net_bridge_fdb_entry {scalar_t__ is_local; } ;
struct net_bridge {TYPE_2__* dev; } ;
struct TYPE_4__ {int name; } ;
struct TYPE_3__ {int name; } ;


 int EINVAL ;
 int ENOMEM ;
 int RTM_NEWNEIGH ;
 struct net_bridge_fdb_entry* br_fdb_find (struct net_bridge*,unsigned char const*,int ) ;
 int br_warn (struct net_bridge*,char*,int ,unsigned char const*,int ) ;
 int fdb_add_hw_addr (struct net_bridge*,unsigned char const*) ;
 struct net_bridge_fdb_entry* fdb_create (struct net_bridge*,struct net_bridge_port*,unsigned char const*,int ,int,int) ;
 int fdb_delete (struct net_bridge*,struct net_bridge_fdb_entry*,int) ;
 int fdb_notify (struct net_bridge*,struct net_bridge_fdb_entry*,int ,int) ;
 int is_valid_ether_addr (unsigned char const*) ;

__attribute__((used)) static int fdb_insert(struct net_bridge *br, struct net_bridge_port *source,
    const unsigned char *addr, u16 vid)
{
 struct net_bridge_fdb_entry *fdb;

 if (!is_valid_ether_addr(addr))
  return -EINVAL;

 fdb = br_fdb_find(br, addr, vid);
 if (fdb) {



  if (fdb->is_local)
   return 0;
  br_warn(br, "adding interface %s with same address as a received packet (addr:%pM, vlan:%u)\n",
         source ? source->dev->name : br->dev->name, addr, vid);
  fdb_delete(br, fdb, 1);
 }

 fdb = fdb_create(br, source, addr, vid, 1, 1);
 if (!fdb)
  return -ENOMEM;

 fdb_add_hw_addr(br, addr);
 fdb_notify(br, fdb, RTM_NEWNEIGH, 1);
 return 0;
}

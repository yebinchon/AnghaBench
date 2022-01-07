
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_bridge_port {int dummy; } ;
struct TYPE_3__ {int addr; } ;
struct TYPE_4__ {int vlan_id; TYPE_1__ addr; } ;
struct net_bridge_fdb_entry {unsigned char is_local; unsigned char is_static; int fdb_node; int rhnode; int used; int updated; scalar_t__ is_sticky; scalar_t__ offloaded; scalar_t__ added_by_external_learn; scalar_t__ added_by_user; TYPE_2__ key; struct net_bridge_port* dst; } ;
struct net_bridge {int fdb_list; int fdb_hash_tbl; } ;
typedef int __u16 ;


 int ETH_ALEN ;
 int GFP_ATOMIC ;
 int br_fdb_cache ;
 int br_fdb_rht_params ;
 int hlist_add_head_rcu (int *,int *) ;
 int jiffies ;
 struct net_bridge_fdb_entry* kmem_cache_alloc (int ,int ) ;
 int kmem_cache_free (int ,struct net_bridge_fdb_entry*) ;
 int memcpy (int ,unsigned char const*,int ) ;
 scalar_t__ rhashtable_lookup_insert_fast (int *,int *,int ) ;

__attribute__((used)) static struct net_bridge_fdb_entry *fdb_create(struct net_bridge *br,
            struct net_bridge_port *source,
            const unsigned char *addr,
            __u16 vid,
            unsigned char is_local,
            unsigned char is_static)
{
 struct net_bridge_fdb_entry *fdb;

 fdb = kmem_cache_alloc(br_fdb_cache, GFP_ATOMIC);
 if (fdb) {
  memcpy(fdb->key.addr.addr, addr, ETH_ALEN);
  fdb->dst = source;
  fdb->key.vlan_id = vid;
  fdb->is_local = is_local;
  fdb->is_static = is_static;
  fdb->added_by_user = 0;
  fdb->added_by_external_learn = 0;
  fdb->offloaded = 0;
  fdb->is_sticky = 0;
  fdb->updated = fdb->used = jiffies;
  if (rhashtable_lookup_insert_fast(&br->fdb_hash_tbl,
        &fdb->rhnode,
        br_fdb_rht_params)) {
   kmem_cache_free(br_fdb_cache, fdb);
   fdb = ((void*)0);
  } else {
   hlist_add_head_rcu(&fdb->fdb_node, &br->fdb_list);
  }
 }
 return fdb;
}

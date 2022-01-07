
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int addr; } ;
struct TYPE_4__ {TYPE_1__ addr; } ;
struct net_bridge_fdb_entry {int rcu; int rhnode; int fdb_node; TYPE_2__ key; scalar_t__ is_static; } ;
struct net_bridge {int fdb_hash_tbl; } ;


 int RTM_DELNEIGH ;
 int br_fdb_rht_params ;
 int call_rcu (int *,int ) ;
 int fdb_del_hw_addr (struct net_bridge*,int ) ;
 int fdb_notify (struct net_bridge*,struct net_bridge_fdb_entry*,int ,int) ;
 int fdb_rcu_free ;
 int hlist_del_init_rcu (int *) ;
 int rhashtable_remove_fast (int *,int *,int ) ;
 int trace_fdb_delete (struct net_bridge*,struct net_bridge_fdb_entry*) ;

__attribute__((used)) static void fdb_delete(struct net_bridge *br, struct net_bridge_fdb_entry *f,
         bool swdev_notify)
{
 trace_fdb_delete(br, f);

 if (f->is_static)
  fdb_del_hw_addr(br, f->key.addr.addr);

 hlist_del_init_rcu(&f->fdb_node);
 rhashtable_remove_fast(&br->fdb_hash_tbl, &f->rhnode,
          br_fdb_rht_params);
 fdb_notify(br, f, RTM_DELNEIGH, swdev_notify);
 call_rcu(&f->rcu, fdb_rcu_free);
}

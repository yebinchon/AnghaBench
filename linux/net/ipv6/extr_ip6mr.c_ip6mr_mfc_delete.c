
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mr_table {int id; int net; int mfc_hash; } ;
struct TYPE_6__ {int list; int mnode; } ;
struct mfc6_cache {TYPE_3__ _c; } ;
struct TYPE_4__ {int sin6_addr; } ;
struct TYPE_5__ {int sin6_addr; } ;
struct mf6cctl {TYPE_1__ mf6cc_mcastgrp; TYPE_2__ mf6cc_origin; } ;


 int ENOENT ;
 int FIB_EVENT_ENTRY_DEL ;
 int RTM_DELROUTE ;
 int call_ip6mr_mfc_entry_notifiers (int ,int ,struct mfc6_cache*,int ) ;
 struct mfc6_cache* ip6mr_cache_find_parent (struct mr_table*,int *,int *,int) ;
 int ip6mr_rht_params ;
 int list_del_rcu (int *) ;
 int mr6_netlink_event (struct mr_table*,struct mfc6_cache*,int ) ;
 int mr_cache_put (TYPE_3__*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int read_pnet (int *) ;
 int rhltable_remove (int *,int *,int ) ;

__attribute__((used)) static int ip6mr_mfc_delete(struct mr_table *mrt, struct mf6cctl *mfc,
       int parent)
{
 struct mfc6_cache *c;


 rcu_read_lock();
 c = ip6mr_cache_find_parent(mrt, &mfc->mf6cc_origin.sin6_addr,
        &mfc->mf6cc_mcastgrp.sin6_addr, parent);
 rcu_read_unlock();
 if (!c)
  return -ENOENT;
 rhltable_remove(&mrt->mfc_hash, &c->_c.mnode, ip6mr_rht_params);
 list_del_rcu(&c->_c.list);

 call_ip6mr_mfc_entry_notifiers(read_pnet(&mrt->net),
           FIB_EVENT_ENTRY_DEL, c, mrt->id);
 mr6_netlink_event(mrt, c, RTM_DELROUTE);
 mr_cache_put(&c->_c);
 return 0;
}

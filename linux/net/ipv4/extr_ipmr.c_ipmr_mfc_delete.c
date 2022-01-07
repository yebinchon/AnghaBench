
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net {int dummy; } ;
struct mr_table {int id; int mfc_hash; int net; } ;
struct TYPE_5__ {int s_addr; } ;
struct TYPE_4__ {int s_addr; } ;
struct mfcctl {TYPE_2__ mfcc_mcastgrp; TYPE_1__ mfcc_origin; } ;
struct TYPE_6__ {int list; int mnode; } ;
struct mfc_cache {TYPE_3__ _c; } ;


 int ENOENT ;
 int FIB_EVENT_ENTRY_DEL ;
 int RTM_DELROUTE ;
 int call_ipmr_mfc_entry_notifiers (struct net*,int ,struct mfc_cache*,int ) ;
 struct mfc_cache* ipmr_cache_find_parent (struct mr_table*,int ,int ,int) ;
 int ipmr_rht_params ;
 int list_del_rcu (int *) ;
 int mr_cache_put (TYPE_3__*) ;
 int mroute_netlink_event (struct mr_table*,struct mfc_cache*,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct net* read_pnet (int *) ;
 int rhltable_remove (int *,int *,int ) ;

__attribute__((used)) static int ipmr_mfc_delete(struct mr_table *mrt, struct mfcctl *mfc, int parent)
{
 struct net *net = read_pnet(&mrt->net);
 struct mfc_cache *c;


 rcu_read_lock();
 c = ipmr_cache_find_parent(mrt, mfc->mfcc_origin.s_addr,
       mfc->mfcc_mcastgrp.s_addr, parent);
 rcu_read_unlock();
 if (!c)
  return -ENOENT;
 rhltable_remove(&mrt->mfc_hash, &c->_c.mnode, ipmr_rht_params);
 list_del_rcu(&c->_c.list);
 call_ipmr_mfc_entry_notifiers(net, FIB_EVENT_ENTRY_DEL, c, mrt->id);
 mroute_netlink_event(mrt, c, RTM_DELROUTE);
 mr_cache_put(&c->_c);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_flowtable_type {int list; } ;


 int NFNL_SUBSYS_NFTABLES ;
 int list_del_rcu (int *) ;
 int nfnl_lock (int ) ;
 int nfnl_unlock (int ) ;

void nft_unregister_flowtable_type(struct nf_flowtable_type *type)
{
 nfnl_lock(NFNL_SUBSYS_NFTABLES);
 list_del_rcu(&type->list);
 nfnl_unlock(NFNL_SUBSYS_NFTABLES);
}

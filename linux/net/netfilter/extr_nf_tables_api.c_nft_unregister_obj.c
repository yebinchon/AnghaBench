
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_object_type {int list; } ;


 int NFNL_SUBSYS_NFTABLES ;
 int list_del_rcu (int *) ;
 int nfnl_lock (int ) ;
 int nfnl_unlock (int ) ;

void nft_unregister_obj(struct nft_object_type *obj_type)
{
 nfnl_lock(NFNL_SUBSYS_NFTABLES);
 list_del_rcu(&obj_type->list);
 nfnl_unlock(NFNL_SUBSYS_NFTABLES);
}

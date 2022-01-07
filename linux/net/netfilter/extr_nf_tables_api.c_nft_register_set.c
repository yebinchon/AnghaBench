
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_set_type {int list; } ;


 int NFNL_SUBSYS_NFTABLES ;
 int list_add_tail_rcu (int *,int *) ;
 int nf_tables_set_types ;
 int nfnl_lock (int ) ;
 int nfnl_unlock (int ) ;

int nft_register_set(struct nft_set_type *type)
{
 nfnl_lock(NFNL_SUBSYS_NFTABLES);
 list_add_tail_rcu(&type->list, &nf_tables_set_types);
 nfnl_unlock(NFNL_SUBSYS_NFTABLES);
 return 0;
}

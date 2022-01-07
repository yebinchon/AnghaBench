
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_chain_type {size_t family; size_t type; } ;


 int NFNL_SUBSYS_NFTABLES ;
 int *** chain_type ;
 int nfnl_lock (int ) ;
 int nfnl_unlock (int ) ;

void nft_unregister_chain_type(const struct nft_chain_type *ctype)
{
 nfnl_lock(NFNL_SUBSYS_NFTABLES);
 chain_type[ctype->family][ctype->type] = ((void*)0);
 nfnl_unlock(NFNL_SUBSYS_NFTABLES);
}

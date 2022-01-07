
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_chain_type {size_t family; size_t type; } ;


 int NFNL_SUBSYS_NFTABLES ;
 size_t NFPROTO_NUMPROTO ;
 scalar_t__ WARN_ON (int) ;
 struct nft_chain_type const*** chain_type ;
 int nfnl_lock (int ) ;
 int nfnl_unlock (int ) ;

void nft_register_chain_type(const struct nft_chain_type *ctype)
{
 if (WARN_ON(ctype->family >= NFPROTO_NUMPROTO))
  return;

 nfnl_lock(NFNL_SUBSYS_NFTABLES);
 if (WARN_ON(chain_type[ctype->family][ctype->type] != ((void*)0))) {
  nfnl_unlock(NFNL_SUBSYS_NFTABLES);
  return;
 }
 chain_type[ctype->family][ctype->type] = ctype;
 nfnl_unlock(NFNL_SUBSYS_NFTABLES);
}

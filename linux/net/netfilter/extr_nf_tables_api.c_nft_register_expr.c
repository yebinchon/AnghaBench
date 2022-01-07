
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_expr_type {scalar_t__ family; int list; } ;


 int NFNL_SUBSYS_NFTABLES ;
 scalar_t__ NFPROTO_UNSPEC ;
 int list_add_rcu (int *,int *) ;
 int list_add_tail_rcu (int *,int *) ;
 int nf_tables_expressions ;
 int nfnl_lock (int ) ;
 int nfnl_unlock (int ) ;

int nft_register_expr(struct nft_expr_type *type)
{
 nfnl_lock(NFNL_SUBSYS_NFTABLES);
 if (type->family == NFPROTO_UNSPEC)
  list_add_tail_rcu(&type->list, &nf_tables_expressions);
 else
  list_add_rcu(&type->list, &nf_tables_expressions);
 nfnl_unlock(NFNL_SUBSYS_NFTABLES);
 return 0;
}

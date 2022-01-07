
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_table {int chains_ht; } ;
struct nft_chain {int list; int rhlhead; struct nft_table* table; } ;


 int WARN_ON_ONCE (int ) ;
 int list_del_rcu (int *) ;
 int nft_chain_ht_params ;
 int rhltable_remove (int *,int *,int ) ;

__attribute__((used)) static void nft_chain_del(struct nft_chain *chain)
{
 struct nft_table *table = chain->table;

 WARN_ON_ONCE(rhltable_remove(&table->chains_ht, &chain->rhlhead,
         nft_chain_ht_params));
 list_del_rcu(&chain->list);
}

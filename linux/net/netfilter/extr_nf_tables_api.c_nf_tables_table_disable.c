
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_table {int dummy; } ;
struct net {int dummy; } ;


 int nft_table_disable (struct net*,struct nft_table*,int ) ;

__attribute__((used)) static void nf_tables_table_disable(struct net *net, struct nft_table *table)
{
 nft_table_disable(net, table, 0);
}

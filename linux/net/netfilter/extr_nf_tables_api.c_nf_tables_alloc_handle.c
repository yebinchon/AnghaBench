
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nft_table {int hgenerator; } ;



__attribute__((used)) static inline u64 nf_tables_alloc_handle(struct nft_table *table)
{
 return ++table->hgenerator;
}

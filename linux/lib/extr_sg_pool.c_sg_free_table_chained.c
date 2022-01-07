
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_table {unsigned int orig_nents; } ;


 int SG_CHUNK_SIZE ;
 int __sg_free_table (struct sg_table*,int ,unsigned int,int ) ;
 int sg_pool_free ;

void sg_free_table_chained(struct sg_table *table,
  unsigned nents_first_chunk)
{
 if (table->orig_nents <= nents_first_chunk)
  return;

 if (nents_first_chunk == 1)
  nents_first_chunk = 0;

 __sg_free_table(table, SG_CHUNK_SIZE, nents_first_chunk, sg_pool_free);
}

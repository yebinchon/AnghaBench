
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_table {int nents; int orig_nents; int sgl; } ;
struct scatterlist {int dummy; } ;


 int BUG_ON (int) ;
 int GFP_ATOMIC ;
 int SG_CHUNK_SIZE ;
 int __sg_alloc_table (struct sg_table*,int,int ,struct scatterlist*,unsigned int,int ,int ) ;
 int sg_free_table_chained (struct sg_table*,unsigned int) ;
 int sg_init_table (int ,int) ;
 int sg_pool_alloc ;
 scalar_t__ unlikely (int) ;

int sg_alloc_table_chained(struct sg_table *table, int nents,
  struct scatterlist *first_chunk, unsigned nents_first_chunk)
{
 int ret;

 BUG_ON(!nents);

 if (first_chunk && nents_first_chunk) {
  if (nents <= nents_first_chunk) {
   table->nents = table->orig_nents = nents;
   sg_init_table(table->sgl, nents);
   return 0;
  }
 }


 if (nents_first_chunk <= 1) {
  first_chunk = ((void*)0);
  nents_first_chunk = 0;
 }

 ret = __sg_alloc_table(table, nents, SG_CHUNK_SIZE,
          first_chunk, nents_first_chunk,
          GFP_ATOMIC, sg_pool_alloc);
 if (unlikely(ret))
  sg_free_table_chained(table, nents_first_chunk);
 return ret;
}

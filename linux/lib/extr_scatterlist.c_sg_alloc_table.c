
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_table {int dummy; } ;
typedef int gfp_t ;


 int SG_MAX_SINGLE_ALLOC ;
 int __sg_alloc_table (struct sg_table*,unsigned int,int ,int *,int ,int ,int ) ;
 int __sg_free_table (struct sg_table*,int ,int ,int ) ;
 int sg_kfree ;
 int sg_kmalloc ;
 scalar_t__ unlikely (int) ;

int sg_alloc_table(struct sg_table *table, unsigned int nents, gfp_t gfp_mask)
{
 int ret;

 ret = __sg_alloc_table(table, nents, SG_MAX_SINGLE_ALLOC,
          ((void*)0), 0, gfp_mask, sg_kmalloc);
 if (unlikely(ret))
  __sg_free_table(table, SG_MAX_SINGLE_ALLOC, 0, sg_kfree);

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_table {int dummy; } ;
struct page {int dummy; } ;
typedef int gfp_t ;


 int SCATTERLIST_MAX_SEGMENT ;
 int __sg_alloc_table_from_pages (struct sg_table*,struct page**,unsigned int,unsigned int,unsigned long,int ,int ) ;

int sg_alloc_table_from_pages(struct sg_table *sgt, struct page **pages,
         unsigned int n_pages, unsigned int offset,
         unsigned long size, gfp_t gfp_mask)
{
 return __sg_alloc_table_from_pages(sgt, pages, n_pages, offset, size,
        SCATTERLIST_MAX_SEGMENT, gfp_mask);
}

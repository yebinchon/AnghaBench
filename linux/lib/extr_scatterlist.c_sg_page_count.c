
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {scalar_t__ length; scalar_t__ offset; } ;


 int PAGE_ALIGN (scalar_t__) ;
 int PAGE_SHIFT ;

__attribute__((used)) static int sg_page_count(struct scatterlist *sg)
{
 return PAGE_ALIGN(sg->offset + sg->length) >> PAGE_SHIFT;
}

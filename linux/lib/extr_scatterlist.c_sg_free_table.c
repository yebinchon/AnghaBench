
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_table {int dummy; } ;


 int SG_MAX_SINGLE_ALLOC ;
 int __sg_free_table (struct sg_table*,int ,int,int ) ;
 int sg_kfree ;

void sg_free_table(struct sg_table *table)
{
 __sg_free_table(table, SG_MAX_SINGLE_ALLOC, 0, sg_kfree);
}

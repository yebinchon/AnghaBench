
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_table {int orig_nents; } ;


 int sg_free_table (struct sg_table*) ;

__attribute__((used)) static void teardown_sgtable(struct sg_table *sgt)
{
 if (sgt->orig_nents > 1)
  sg_free_table(sgt);
}

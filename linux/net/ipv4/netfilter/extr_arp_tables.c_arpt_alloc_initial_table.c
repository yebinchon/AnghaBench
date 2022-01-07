
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_table {int dummy; } ;


 int ARPT ;
 int arpt ;
 void* xt_alloc_initial_table (int ,int ) ;

void *arpt_alloc_initial_table(const struct xt_table *info)
{
 return xt_alloc_initial_table(arpt, ARPT);
}

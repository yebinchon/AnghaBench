
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DAX_PMD ;
 unsigned int PMD_ORDER ;
 int xa_to_value (void*) ;

__attribute__((used)) static unsigned int dax_entry_order(void *entry)
{
 if (xa_to_value(entry) & DAX_PMD)
  return PMD_ORDER;
 return 0;
}

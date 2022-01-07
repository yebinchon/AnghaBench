
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DAX_PMD ;
 int xa_to_value (void*) ;

__attribute__((used)) static bool dax_is_pte_entry(void *entry)
{
 return !(xa_to_value(entry) & DAX_PMD);
}

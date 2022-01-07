
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long DAX_PMD ;
 unsigned long xa_to_value (void*) ;

__attribute__((used)) static unsigned long dax_is_pmd_entry(void *entry)
{
 return xa_to_value(entry) & DAX_PMD;
}

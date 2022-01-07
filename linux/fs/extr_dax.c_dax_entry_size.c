
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PAGE_SIZE ;
 unsigned long PMD_SIZE ;
 scalar_t__ dax_is_empty_entry (void*) ;
 scalar_t__ dax_is_pmd_entry (void*) ;
 scalar_t__ dax_is_zero_entry (void*) ;

__attribute__((used)) static unsigned long dax_entry_size(void *entry)
{
 if (dax_is_zero_entry(entry))
  return 0;
 else if (dax_is_empty_entry(entry))
  return 0;
 else if (dax_is_pmd_entry(entry))
  return PMD_SIZE;
 else
  return PAGE_SIZE;
}

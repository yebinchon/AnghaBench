
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum page_entry_size { ____Placeholder_page_entry_size } page_entry_size ;


 unsigned int PAGE_SHIFT ;
 int PE_SIZE_PMD ;
 int PE_SIZE_PTE ;
 int PE_SIZE_PUD ;
 unsigned int PMD_SHIFT ;
 unsigned int PUD_SHIFT ;

__attribute__((used)) static inline unsigned int pe_order(enum page_entry_size pe_size)
{
 if (pe_size == PE_SIZE_PTE)
  return PAGE_SHIFT - PAGE_SHIFT;
 if (pe_size == PE_SIZE_PMD)
  return PMD_SHIFT - PAGE_SHIFT;
 if (pe_size == PE_SIZE_PUD)
  return PUD_SHIFT - PAGE_SHIFT;
 return ~0;
}

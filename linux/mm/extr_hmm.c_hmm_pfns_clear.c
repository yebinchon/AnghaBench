
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct hmm_range {int * values; } ;


 size_t HMM_PFN_NONE ;
 scalar_t__ PAGE_SIZE ;

__attribute__((used)) static void hmm_pfns_clear(struct hmm_range *range,
      uint64_t *pfns,
      unsigned long addr,
      unsigned long end)
{
 for (; addr < end; addr += PAGE_SIZE, pfns++)
  *pfns = range->values[HMM_PFN_NONE];
}

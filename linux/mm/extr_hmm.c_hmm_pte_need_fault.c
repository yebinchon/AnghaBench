
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct hmm_vma_walk {int flags; struct hmm_range* range; } ;
struct hmm_range {int pfn_flags_mask; int default_flags; int* flags; } ;


 int HMM_FAULT_SNAPSHOT ;
 size_t HMM_PFN_DEVICE_PRIVATE ;
 size_t HMM_PFN_VALID ;
 size_t HMM_PFN_WRITE ;

__attribute__((used)) static inline void hmm_pte_need_fault(const struct hmm_vma_walk *hmm_vma_walk,
          uint64_t pfns, uint64_t cpu_flags,
          bool *fault, bool *write_fault)
{
 struct hmm_range *range = hmm_vma_walk->range;

 if (hmm_vma_walk->flags & HMM_FAULT_SNAPSHOT)
  return;
 pfns = (pfns & range->pfn_flags_mask) | range->default_flags;


 if (!(pfns & range->flags[HMM_PFN_VALID]))
  return;

 if ((cpu_flags & range->flags[HMM_PFN_DEVICE_PRIVATE])) {

  if (pfns & range->flags[HMM_PFN_DEVICE_PRIVATE]) {
   *write_fault = pfns & range->flags[HMM_PFN_WRITE];
   *fault = 1;
  }
  return;
 }


 *fault = !(cpu_flags & range->flags[HMM_PFN_VALID]);

 if ((pfns & range->flags[HMM_PFN_WRITE]) &&
     !(cpu_flags & range->flags[HMM_PFN_WRITE])) {
  *write_fault = 1;
  *fault = 1;
 }
}

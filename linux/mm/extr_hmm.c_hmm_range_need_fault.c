
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct hmm_vma_walk {int flags; } ;


 int HMM_FAULT_SNAPSHOT ;
 int hmm_pte_need_fault (struct hmm_vma_walk const*,int const,int ,int*,int*) ;

__attribute__((used)) static void hmm_range_need_fault(const struct hmm_vma_walk *hmm_vma_walk,
     const uint64_t *pfns, unsigned long npages,
     uint64_t cpu_flags, bool *fault,
     bool *write_fault)
{
 unsigned long i;

 if (hmm_vma_walk->flags & HMM_FAULT_SNAPSHOT) {
  *fault = *write_fault = 0;
  return;
 }

 *fault = *write_fault = 0;
 for (i = 0; i < npages; ++i) {
  hmm_pte_need_fault(hmm_vma_walk, pfns[i], cpu_flags,
       fault, write_fault);
  if ((*write_fault))
   return;
 }
}

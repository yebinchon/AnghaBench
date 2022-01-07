
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct hmm_range {int* flags; } ;
typedef int pmd_t ;


 size_t HMM_PFN_VALID ;
 size_t HMM_PFN_WRITE ;
 scalar_t__ pmd_protnone (int ) ;
 scalar_t__ pmd_write (int ) ;

__attribute__((used)) static inline uint64_t pmd_to_hmm_pfn_flags(struct hmm_range *range, pmd_t pmd)
{
 if (pmd_protnone(pmd))
  return 0;
 return pmd_write(pmd) ? range->flags[HMM_PFN_VALID] |
    range->flags[HMM_PFN_WRITE] :
    range->flags[HMM_PFN_VALID];
}

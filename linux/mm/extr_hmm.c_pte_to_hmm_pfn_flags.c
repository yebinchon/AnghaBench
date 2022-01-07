
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct hmm_range {int* flags; } ;
typedef int pte_t ;


 size_t HMM_PFN_VALID ;
 size_t HMM_PFN_WRITE ;
 scalar_t__ pte_none (int ) ;
 int pte_present (int ) ;
 scalar_t__ pte_protnone (int ) ;
 scalar_t__ pte_write (int ) ;

__attribute__((used)) static inline uint64_t pte_to_hmm_pfn_flags(struct hmm_range *range, pte_t pte)
{
 if (pte_none(pte) || !pte_present(pte) || pte_protnone(pte))
  return 0;
 return pte_write(pte) ? range->flags[HMM_PFN_VALID] |
    range->flags[HMM_PFN_WRITE] :
    range->flags[HMM_PFN_VALID];
}

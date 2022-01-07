
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pmd_t ;


 int kasan_early_shadow_pte ;
 int lm_alias (int ) ;
 scalar_t__ pmd_page (int ) ;
 scalar_t__ virt_to_page (int ) ;

__attribute__((used)) static inline bool kasan_pte_table(pmd_t pmd)
{
 return pmd_page(pmd) == virt_to_page(lm_alias(kasan_early_shadow_pte));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;


 int kasan_early_shadow_page ;
 int lm_alias (int ) ;
 scalar_t__ pte_page (int ) ;
 scalar_t__ virt_to_page (int ) ;

__attribute__((used)) static inline bool kasan_early_shadow_page_entry(pte_t pte)
{
 return pte_page(pte) == virt_to_page(lm_alias(kasan_early_shadow_page));
}

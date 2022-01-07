
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;


 int pte_same (int ,int ) ;
 int pte_swp_clear_soft_dirty (int ) ;

__attribute__((used)) static inline int pte_same_as_swp(pte_t pte, pte_t swp_pte)
{
 return pte_same(pte_swp_clear_soft_dirty(pte), swp_pte);
}

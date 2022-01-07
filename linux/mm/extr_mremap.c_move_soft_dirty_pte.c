
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;


 scalar_t__ is_swap_pte (int ) ;
 int pte_mksoft_dirty (int ) ;
 scalar_t__ pte_present (int ) ;
 int pte_swp_mksoft_dirty (int ) ;

__attribute__((used)) static pte_t move_soft_dirty_pte(pte_t pte)
{
 return pte;
}

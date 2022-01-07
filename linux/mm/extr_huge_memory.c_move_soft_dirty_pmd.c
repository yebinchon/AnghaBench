
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pmd_t ;


 int is_pmd_migration_entry (int ) ;
 int pmd_mksoft_dirty (int ) ;
 scalar_t__ pmd_present (int ) ;
 int pmd_swp_mksoft_dirty (int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static pmd_t move_soft_dirty_pmd(pmd_t pmd)
{






 return pmd;
}

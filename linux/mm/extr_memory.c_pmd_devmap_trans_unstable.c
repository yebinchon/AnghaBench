
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pmd_t ;


 scalar_t__ pmd_devmap (int ) ;
 scalar_t__ pmd_trans_unstable (int *) ;

__attribute__((used)) static int pmd_devmap_trans_unstable(pmd_t *pmd)
{
 return pmd_devmap(*pmd) || pmd_trans_unstable(pmd);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pmd_t ;
typedef int pgtable_t ;


 int mm_dec_nr_ptes (struct mm_struct*) ;
 int pgtable_trans_huge_withdraw (struct mm_struct*,int *) ;
 int pte_free (struct mm_struct*,int ) ;

__attribute__((used)) static inline void zap_deposited_table(struct mm_struct *mm, pmd_t *pmd)
{
 pgtable_t pgtable;

 pgtable = pgtable_trans_huge_withdraw(mm, pmd);
 pte_free(mm, pgtable);
 mm_dec_nr_ptes(mm);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int page_table_lock; } ;
typedef int pud_t ;
typedef int p4d_t ;


 int ENOMEM ;
 int mm_inc_nr_puds (struct mm_struct*) ;
 int p4d_populate (struct mm_struct*,int *,int *) ;
 int p4d_present (int ) ;
 int pgd_populate (struct mm_struct*,int *,int *) ;
 int pgd_present (int ) ;
 int * pud_alloc_one (struct mm_struct*,unsigned long) ;
 int pud_free (struct mm_struct*,int *) ;
 int smp_wmb () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int __pud_alloc(struct mm_struct *mm, p4d_t *p4d, unsigned long address)
{
 pud_t *new = pud_alloc_one(mm, address);
 if (!new)
  return -ENOMEM;

 smp_wmb();

 spin_lock(&mm->page_table_lock);

 if (!p4d_present(*p4d)) {
  mm_inc_nr_puds(mm);
  p4d_populate(mm, p4d, new);
 } else
  pud_free(mm, new);







 spin_unlock(&mm->page_table_lock);
 return 0;
}

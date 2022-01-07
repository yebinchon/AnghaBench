
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int page_table_lock; } ;
typedef int pgd_t ;
typedef int p4d_t ;


 int ENOMEM ;
 int * p4d_alloc_one (struct mm_struct*,unsigned long) ;
 int p4d_free (struct mm_struct*,int *) ;
 int pgd_populate (struct mm_struct*,int *,int *) ;
 scalar_t__ pgd_present (int ) ;
 int smp_wmb () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int __p4d_alloc(struct mm_struct *mm, pgd_t *pgd, unsigned long address)
{
 p4d_t *new = p4d_alloc_one(mm, address);
 if (!new)
  return -ENOMEM;

 smp_wmb();

 spin_lock(&mm->page_table_lock);
 if (pgd_present(*pgd))
  p4d_free(mm, new);
 else
  pgd_populate(mm, pgd, new);
 spin_unlock(&mm->page_table_lock);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int mm_users; } ;


 int __mmput (struct mm_struct*) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int might_sleep () ;

void mmput(struct mm_struct *mm)
{
 might_sleep();

 if (atomic_dec_and_test(&mm->mm_users))
  __mmput(mm);
}

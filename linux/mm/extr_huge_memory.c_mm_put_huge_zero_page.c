
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int flags; } ;


 int MMF_HUGE_ZERO_PAGE ;
 int put_huge_zero_page () ;
 scalar_t__ test_bit (int ,int *) ;

void mm_put_huge_zero_page(struct mm_struct *mm)
{
 if (test_bit(MMF_HUGE_ZERO_PAGE, &mm->flags))
  put_huge_zero_page();
}

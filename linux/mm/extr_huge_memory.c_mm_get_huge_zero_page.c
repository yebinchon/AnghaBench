
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct mm_struct {int flags; } ;


 int MMF_HUGE_ZERO_PAGE ;
 struct page* READ_ONCE (int ) ;
 int get_huge_zero_page () ;
 int huge_zero_page ;
 int put_huge_zero_page () ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

struct page *mm_get_huge_zero_page(struct mm_struct *mm)
{
 if (test_bit(MMF_HUGE_ZERO_PAGE, &mm->flags))
  return READ_ONCE(huge_zero_page);

 if (!get_huge_zero_page())
  return ((void*)0);

 if (test_and_set_bit(MMF_HUGE_ZERO_PAGE, &mm->flags))
  put_huge_zero_page();

 return READ_ONCE(huge_zero_page);
}

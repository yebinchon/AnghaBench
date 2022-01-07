
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct page {int dummy; } ;
struct mm_struct {int mmap_sem; } ;
struct TYPE_3__ {struct mm_struct* mm; } ;


 long EINVAL ;
 unsigned int FOLL_LONGTERM ;
 unsigned int FOLL_TOUCH ;
 scalar_t__ WARN_ON_ONCE (unsigned int) ;
 long __get_user_pages_locked (TYPE_1__*,struct mm_struct*,unsigned long,unsigned long,struct page**,int *,int*,unsigned int) ;
 TYPE_1__* current ;
 int down_read (int *) ;
 int up_read (int *) ;

long get_user_pages_unlocked(unsigned long start, unsigned long nr_pages,
        struct page **pages, unsigned int gup_flags)
{
 struct mm_struct *mm = current->mm;
 int locked = 1;
 long ret;







 if (WARN_ON_ONCE(gup_flags & FOLL_LONGTERM))
  return -EINVAL;

 down_read(&mm->mmap_sem);
 ret = __get_user_pages_locked(current, mm, start, nr_pages, pages, ((void*)0),
          &locked, gup_flags | FOLL_TOUCH);
 if (locked)
  up_read(&mm->mmap_sem);
 return ret;
}

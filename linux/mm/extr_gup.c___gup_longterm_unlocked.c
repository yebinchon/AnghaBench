
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_5__ {int mmap_sem; } ;
struct TYPE_4__ {TYPE_3__* mm; } ;


 unsigned int FOLL_LONGTERM ;
 int __gup_longterm_locked (TYPE_1__*,TYPE_3__*,unsigned long,int,struct page**,int *,unsigned int) ;
 TYPE_1__* current ;
 int down_read (int *) ;
 int get_user_pages_unlocked (unsigned long,int,struct page**,unsigned int) ;
 int up_read (int *) ;

__attribute__((used)) static int __gup_longterm_unlocked(unsigned long start, int nr_pages,
       unsigned int gup_flags, struct page **pages)
{
 int ret;





 if (gup_flags & FOLL_LONGTERM) {
  down_read(&current->mm->mmap_sem);
  ret = __gup_longterm_locked(current, current->mm,
         start, nr_pages,
         pages, ((void*)0), gup_flags);
  up_read(&current->mm->mmap_sem);
 } else {
  ret = get_user_pages_unlocked(start, nr_pages,
           pages, gup_flags);
 }

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_3__ {int mm; } ;


 long EINVAL ;
 unsigned int FOLL_LONGTERM ;
 unsigned int FOLL_TOUCH ;
 scalar_t__ WARN_ON_ONCE (unsigned int) ;
 long __get_user_pages_locked (TYPE_1__*,int ,unsigned long,unsigned long,struct page**,int *,int*,unsigned int) ;
 TYPE_1__* current ;

long get_user_pages_locked(unsigned long start, unsigned long nr_pages,
      unsigned int gup_flags, struct page **pages,
      int *locked)
{






 if (WARN_ON_ONCE(gup_flags & FOLL_LONGTERM))
  return -EINVAL;

 return __get_user_pages_locked(current, current->mm, start, nr_pages,
           pages, ((void*)0), locked,
           gup_flags | FOLL_TOUCH);
}

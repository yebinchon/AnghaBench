
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;
struct TYPE_3__ {int mm; } ;


 unsigned int FOLL_TOUCH ;
 long __gup_longterm_locked (TYPE_1__*,int ,unsigned long,unsigned long,struct page**,struct vm_area_struct**,unsigned int) ;
 TYPE_1__* current ;

long get_user_pages(unsigned long start, unsigned long nr_pages,
  unsigned int gup_flags, struct page **pages,
  struct vm_area_struct **vmas)
{
 return __gup_longterm_locked(current, current->mm, start, nr_pages,
         pages, vmas, gup_flags | FOLL_TOUCH);
}

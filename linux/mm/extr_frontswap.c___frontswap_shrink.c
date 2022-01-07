
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long __frontswap_curr_pages () ;
 int __frontswap_unuse_pages (unsigned long,unsigned long*,int*) ;
 int assert_spin_locked (int *) ;
 int swap_lock ;

__attribute__((used)) static int __frontswap_shrink(unsigned long target_pages,
    unsigned long *pages_to_unuse,
    int *type)
{
 unsigned long total_pages = 0, total_pages_to_unuse;

 assert_spin_locked(&swap_lock);

 total_pages = __frontswap_curr_pages();
 if (total_pages <= target_pages) {

  *pages_to_unuse = 0;
  return 1;
 }
 total_pages_to_unuse = total_pages - target_pages;
 return __frontswap_unuse_pages(total_pages_to_unuse, pages_to_unuse, type);
}

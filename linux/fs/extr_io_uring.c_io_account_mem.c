
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_struct {int locked_vm; } ;


 int ENOMEM ;
 unsigned long PAGE_SHIFT ;
 int RLIMIT_MEMLOCK ;
 unsigned long atomic_long_cmpxchg (int *,unsigned long,unsigned long) ;
 unsigned long atomic_long_read (int *) ;
 unsigned long rlimit (int ) ;

__attribute__((used)) static int io_account_mem(struct user_struct *user, unsigned long nr_pages)
{
 unsigned long page_limit, cur_pages, new_pages;


 page_limit = rlimit(RLIMIT_MEMLOCK) >> PAGE_SHIFT;

 do {
  cur_pages = atomic_long_read(&user->locked_vm);
  new_pages = cur_pages + nr_pages;
  if (new_pages > page_limit)
   return -ENOMEM;
 } while (atomic_long_cmpxchg(&user->locked_vm, cur_pages,
     new_pages) != cur_pages);

 return 0;
}

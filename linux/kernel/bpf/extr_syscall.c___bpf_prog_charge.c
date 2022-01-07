
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct user_struct {int locked_vm; } ;


 int EPERM ;
 unsigned long PAGE_SHIFT ;
 int RLIMIT_MEMLOCK ;
 unsigned long atomic_long_add_return (int ,int *) ;
 int atomic_long_sub (int ,int *) ;
 unsigned long rlimit (int ) ;

int __bpf_prog_charge(struct user_struct *user, u32 pages)
{
 unsigned long memlock_limit = rlimit(RLIMIT_MEMLOCK) >> PAGE_SHIFT;
 unsigned long user_bufs;

 if (user) {
  user_bufs = atomic_long_add_return(pages, &user->locked_vm);
  if (user_bufs > memlock_limit) {
   atomic_long_sub(pages, &user->locked_vm);
   return -EPERM;
  }
 }

 return 0;
}

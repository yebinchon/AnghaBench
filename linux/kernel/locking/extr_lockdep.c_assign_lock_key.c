
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lockdep_map {void* key; } ;
struct lock_class_key {int dummy; } ;
typedef int raw_spinlock_t ;


 int BUILD_BUG_ON (int) ;
 scalar_t__ __is_kernel_percpu_address (unsigned long,unsigned long*) ;
 scalar_t__ __is_module_percpu_address (unsigned long,unsigned long*) ;
 int debug_locks_off () ;
 int dump_stack () ;
 int pr_err (char*) ;
 scalar_t__ static_obj (struct lockdep_map*) ;

__attribute__((used)) static bool assign_lock_key(struct lockdep_map *lock)
{
 unsigned long can_addr, addr = (unsigned long)lock;
 if (__is_kernel_percpu_address(addr, &can_addr))
  lock->key = (void *)can_addr;
 else if (__is_module_percpu_address(addr, &can_addr))
  lock->key = (void *)can_addr;
 else if (static_obj(lock))
  lock->key = (void *)lock;
 else {

  debug_locks_off();
  pr_err("INFO: trying to register non-static key.\n");
  pr_err("the code is fine but needs lockdep annotation.\n");
  pr_err("turning off the locking correctness validator.\n");
  dump_stack();
  return 0;
 }

 return 1;
}

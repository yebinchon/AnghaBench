
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_mutex {int owner; int line; int file; scalar_t__ name; } ;


 int printk (char*,...) ;
 int printk_task (scalar_t__) ;
 scalar_t__ rt_mutex_owner (struct rt_mutex*) ;

__attribute__((used)) static void printk_lock(struct rt_mutex *lock, int print_owner)
{
 if (lock->name)
  printk(" [%p] {%s}\n",
   lock, lock->name);
 else
  printk(" [%p] {%s:%d}\n",
   lock, lock->file, lock->line);

 if (print_owner && rt_mutex_owner(lock)) {
  printk(".. ->owner: %p\n", lock->owner);
  printk(".. held by:  ");
  printk_task(rt_mutex_owner(lock));
  printk("\n");
 }
}

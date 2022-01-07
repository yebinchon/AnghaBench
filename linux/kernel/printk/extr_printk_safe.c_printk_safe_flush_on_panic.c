
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debug_locks_off () ;
 int logbuf_lock ;
 int num_online_cpus () ;
 int printk_safe_flush () ;
 scalar_t__ raw_spin_is_locked (int *) ;
 int raw_spin_lock_init (int *) ;

void printk_safe_flush_on_panic(void)
{




 if (raw_spin_is_locked(&logbuf_lock)) {
  if (num_online_cpus() > 1)
   return;

  debug_locks_off();
  raw_spin_lock_init(&logbuf_lock);
 }

 printk_safe_flush();
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct percpu_rw_semaphore {int rw_sem; int * read_count; int readers_block; } ;


 int __down_read (int *) ;
 int __percpu_up_read (struct percpu_rw_semaphore*) ;
 int __up_read (int *) ;
 scalar_t__ likely (int) ;
 int preempt_disable () ;
 int preempt_enable_no_resched () ;
 int smp_load_acquire (int *) ;
 int smp_mb () ;
 int this_cpu_inc (int ) ;

int __percpu_down_read(struct percpu_rw_semaphore *sem, int try)
{
 smp_mb();





 if (likely(!smp_load_acquire(&sem->readers_block)))
  return 1;





 __percpu_up_read(sem);

 if (try)
  return 0;





 preempt_enable_no_resched();




 __down_read(&sem->rw_sem);
 this_cpu_inc(*sem->read_count);
 __up_read(&sem->rw_sem);

 preempt_disable();
 return 1;
}

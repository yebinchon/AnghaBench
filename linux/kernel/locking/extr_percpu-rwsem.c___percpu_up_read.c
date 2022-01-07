
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct percpu_rw_semaphore {int writer; int * read_count; } ;


 int __this_cpu_dec (int ) ;
 int rcuwait_wake_up (int *) ;
 int smp_mb () ;

void __percpu_up_read(struct percpu_rw_semaphore *sem)
{
 smp_mb();





 __this_cpu_dec(*sem->read_count);


 rcuwait_wake_up(&sem->writer);
}

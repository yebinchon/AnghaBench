
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct percpu_rw_semaphore {int * read_count; } ;


 scalar_t__ per_cpu_sum (int ) ;
 int smp_mb () ;

__attribute__((used)) static bool readers_active_check(struct percpu_rw_semaphore *sem)
{
 if (per_cpu_sum(*sem->read_count) != 0)
  return 0;






 smp_mb();

 return 1;
}

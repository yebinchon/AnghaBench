
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpuset ;
typedef int cpu_set_t ;


 int CPU_SET (int,int *) ;
 int CPU_ZERO (int *) ;
 int sched_setaffinity (int ,int,int *) ;
 int test_task_rename (int) ;
 int test_urandom_read (int) ;

__attribute__((used)) static void loop(int cpu, int flags)
{
 cpu_set_t cpuset;

 CPU_ZERO(&cpuset);
 CPU_SET(cpu, &cpuset);
 sched_setaffinity(0, sizeof(cpuset), &cpuset);

 if (flags & 1)
  test_task_rename(cpu);
 if (flags & 2)
  test_urandom_read(cpu);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mask ;
typedef int cpu_set_t ;


 int BUG_ON (int) ;
 int sched_setaffinity (int ,int,int *) ;

__attribute__((used)) static void bind_to_cpumask(cpu_set_t mask)
{
 int ret;

 ret = sched_setaffinity(0, sizeof(mask), &mask);
 BUG_ON(ret);
}

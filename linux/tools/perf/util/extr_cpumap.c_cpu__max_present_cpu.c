
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int max_present_cpu_num ;
 int set_max_cpu_num () ;
 scalar_t__ unlikely (int) ;

int cpu__max_present_cpu(void)
{
 if (unlikely(!max_present_cpu_num))
  set_max_cpu_num();

 return max_present_cpu_num;
}

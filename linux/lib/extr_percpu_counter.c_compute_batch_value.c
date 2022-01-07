
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int max (int,int) ;
 int num_online_cpus () ;
 int percpu_counter_batch ;

__attribute__((used)) static int compute_batch_value(unsigned int cpu)
{
 int nr = num_online_cpus();

 percpu_counter_batch = max(32, nr*2);
 return 0;
}

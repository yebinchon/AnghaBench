
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpumask {int dummy; } ;


 int cpumask_bits (struct cpumask const*) ;
 int cpumask_check (int) ;
 unsigned int find_next_bit (int ,int ,int) ;
 int nr_cpumask_bits ;

unsigned int cpumask_next(int n, const struct cpumask *srcp)
{

 if (n != -1)
  cpumask_check(n);
 return find_next_bit(cpumask_bits(srcp), nr_cpumask_bits, n + 1);
}

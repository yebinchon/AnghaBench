
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpumask {int dummy; } ;


 int cpumask_bits (struct cpumask const*) ;
 int cpumask_check (int) ;
 int find_next_and_bit (int ,int ,int ,int) ;
 int nr_cpumask_bits ;

int cpumask_next_and(int n, const struct cpumask *src1p,
       const struct cpumask *src2p)
{

 if (n != -1)
  cpumask_check(n);
 return find_next_and_bit(cpumask_bits(src1p), cpumask_bits(src2p),
  nr_cpumask_bits, n + 1);
}

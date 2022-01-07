
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct em_perf_domain {int dummy; } ;


 struct em_perf_domain* READ_ONCE (int ) ;
 int em_data ;
 int per_cpu (int ,int) ;

struct em_perf_domain *em_cpu_get(int cpu)
{
 return READ_ONCE(per_cpu(em_data, cpu));
}

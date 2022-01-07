
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_sample {unsigned int cpu; } ;
struct c2c_hist_entry {int cpuset; } ;


 scalar_t__ WARN_ONCE (int,char*) ;
 int set_bit (unsigned int,int ) ;

__attribute__((used)) static void c2c_he__set_cpu(struct c2c_hist_entry *c2c_he,
       struct perf_sample *sample)
{
 if (WARN_ONCE(sample->cpu == (unsigned int) -1,
        "WARNING: no sample cpu value"))
  return;

 set_bit(sample->cpu, c2c_he->cpuset);
}

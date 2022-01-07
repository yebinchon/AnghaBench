
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_sample {int cpu; } ;


 int cpu_bitmap ;
 scalar_t__ cpu_list ;
 int test_bit (int ,int ) ;

__attribute__((used)) static bool filter_cpu(struct perf_sample *sample)
{
 if (cpu_list)
  return !test_bit(sample->cpu, cpu_bitmap);
 return 0;
}

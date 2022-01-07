
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_sample {int time; } ;


 scalar_t__ perf_time__skip_sample (int *,int ) ;
 int ptime ;

__attribute__((used)) static bool perf_kmem__skip_sample(struct perf_sample *sample)
{

 if (perf_time__skip_sample(&ptime, sample->time))
  return 1;

 return 0;
}

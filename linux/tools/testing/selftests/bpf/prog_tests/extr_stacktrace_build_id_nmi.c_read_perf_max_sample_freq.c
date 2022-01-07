
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u64 ;
typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fscanf (int *,char*,int*) ;

__attribute__((used)) static __u64 read_perf_max_sample_freq(void)
{
 __u64 sample_freq = 5000;
 FILE *f;

 f = fopen("/proc/sys/kernel/perf_event_max_sample_rate", "r");
 if (f == ((void*)0))
  return sample_freq;
 fscanf(f, "%llu", &sample_freq);
 fclose(f);
 return sample_freq;
}

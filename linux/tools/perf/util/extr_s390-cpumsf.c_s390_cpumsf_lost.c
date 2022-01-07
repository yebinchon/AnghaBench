
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s390_cpumsf {int dummy; } ;
struct perf_sample {int time; int tid; int pid; int cpu; } ;


 int s390_cpumsf_synth_error (struct s390_cpumsf*,int,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int s390_cpumsf_lost(struct s390_cpumsf *sf, struct perf_sample *sample)
{
 return s390_cpumsf_synth_error(sf, 1, sample->cpu,
           sample->pid, sample->tid, 0,
           sample->time);
}

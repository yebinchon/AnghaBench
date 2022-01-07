
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_session {TYPE_1__* itrace_synth_opts; } ;
struct TYPE_2__ {unsigned long* cpu_bitmap; } ;


 int test_bit (int,unsigned long*) ;

__attribute__((used)) static bool filter_cpu(struct perf_session *session, int cpu)
{
 unsigned long *cpu_bitmap = session->itrace_synth_opts->cpu_bitmap;

 return cpu_bitmap && cpu != -1 && !test_bit(cpu, cpu_bitmap);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
typedef int cpu ;


 int BPF_F_CURRENT_CPU ;
 int bpf_get_smp_processor_id () ;
 int bpf_perf_event_output (struct pt_regs*,int *,int ,int*,int) ;
 int perf_buf_map ;

int handle_sys_nanosleep_entry(struct pt_regs *ctx)
{
 int cpu = bpf_get_smp_processor_id();

 bpf_perf_event_output(ctx, &perf_buf_map, BPF_F_CURRENT_CPU,
         &cpu, sizeof(cpu));
 return 0;
}

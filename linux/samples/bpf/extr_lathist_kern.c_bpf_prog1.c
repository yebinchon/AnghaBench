
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct pt_regs {int dummy; } ;


 int bpf_get_smp_processor_id () ;
 int bpf_ktime_get_ns () ;
 int * bpf_map_lookup_elem (int *,int*) ;
 int my_map ;

int bpf_prog1(struct pt_regs *ctx)
{
 int cpu = bpf_get_smp_processor_id();
 u64 *ts = bpf_map_lookup_elem(&my_map, &cpu);

 if (ts)
  *ts = bpf_ktime_get_ns();

 return 0;
}

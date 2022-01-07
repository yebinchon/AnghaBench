
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct pt_regs {int dummy; } ;
typedef int s64 ;


 int BPF_NOEXIST ;
 int bpf_get_smp_processor_id () ;
 scalar_t__* bpf_map_lookup_elem (int *,int *) ;
 int bpf_map_update_elem (int *,int *,scalar_t__*,int ) ;
 scalar_t__ bpf_perf_event_read (int *,int ) ;
 int counters ;
 int values ;

int bpf_prog1(struct pt_regs *ctx)
{
 u32 key = bpf_get_smp_processor_id();
 u64 count, *val;
 s64 error;

 count = bpf_perf_event_read(&counters, key);
 error = (s64)count;
 if (error <= -2 && error >= -22)
  return 0;

 val = bpf_map_lookup_elem(&values, &key);
 if (val)
  *val = count;
 else
  bpf_map_update_elem(&values, &key, &count, BPF_NOEXIST);

 return 0;
}

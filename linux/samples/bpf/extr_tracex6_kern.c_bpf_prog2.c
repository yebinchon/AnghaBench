
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pt_regs {int dummy; } ;
struct bpf_perf_event_value {int dummy; } ;
typedef int buf ;


 int BPF_NOEXIST ;
 int bpf_get_smp_processor_id () ;
 struct bpf_perf_event_value* bpf_map_lookup_elem (int *,int *) ;
 int bpf_map_update_elem (int *,int *,struct bpf_perf_event_value*,int ) ;
 int bpf_perf_event_read_value (int *,int ,struct bpf_perf_event_value*,int) ;
 int counters ;
 int values2 ;

int bpf_prog2(struct pt_regs *ctx)
{
 u32 key = bpf_get_smp_processor_id();
 struct bpf_perf_event_value *val, buf;
 int error;

 error = bpf_perf_event_read_value(&counters, key, &buf, sizeof(buf));
 if (error)
  return 0;

 val = bpf_map_lookup_elem(&values2, &key);
 if (val)
  *val = buf;
 else
  bpf_map_update_elem(&values2, &key, &buf, BPF_NOEXIST);

 return 0;
}

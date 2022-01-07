
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct bpf_perf_event_data {int regs; } ;


 int BPF_NOEXIST ;
 int PT_REGS_IP (int *) ;
 int* bpf_map_lookup_elem (int *,int *) ;
 int bpf_map_update_elem (int *,int *,int*,int ) ;
 int ip_map ;

int do_sample(struct bpf_perf_event_data *ctx)
{
 u64 ip;
 u32 *value, init_val = 1;

 ip = PT_REGS_IP(&ctx->regs);
 value = bpf_map_lookup_elem(&ip_map, &ip);
 if (value)
  *value += 1;
 else

  bpf_map_update_elem(&ip_map, &ip, &init_val, BPF_NOEXIST);

 return 0;
}

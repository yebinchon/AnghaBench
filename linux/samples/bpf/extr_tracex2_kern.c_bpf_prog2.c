
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int BPF_ANY ;
 int BPF_KPROBE_READ_RET_IP (long,struct pt_regs*) ;
 long* bpf_map_lookup_elem (int *,long*) ;
 int bpf_map_update_elem (int *,long*,long*,int ) ;
 int my_map ;

int bpf_prog2(struct pt_regs *ctx)
{
 long loc = 0;
 long init_val = 1;
 long *value;




 BPF_KPROBE_READ_RET_IP(loc, ctx);

 value = bpf_map_lookup_elem(&my_map, &loc);
 if (value)
  *value += 1;
 else
  bpf_map_update_elem(&my_map, &loc, &init_val, BPF_ANY);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct pair {long ip; int val; } ;


 int BPF_ANY ;
 int BPF_KRETPROBE_READ_RET_IP (long,struct pt_regs*) ;
 long PT_REGS_RC (struct pt_regs*) ;
 int bpf_ktime_get_ns () ;
 int bpf_map_update_elem (int *,long*,struct pair*,int ) ;
 int my_map ;

int bpf_prog2(struct pt_regs *ctx)
{
 long ptr = PT_REGS_RC(ctx);
 long ip = 0;


 BPF_KRETPROBE_READ_RET_IP(ip, ctx);

 struct pair v = {
  .val = bpf_ktime_get_ns(),
  .ip = ip,
 };

 bpf_map_update_elem(&my_map, &ptr, &v, BPF_ANY);
 return 0;
}

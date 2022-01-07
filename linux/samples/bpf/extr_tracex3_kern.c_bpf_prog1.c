
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct pt_regs {int dummy; } ;


 int BPF_ANY ;
 long PT_REGS_PARM1 (struct pt_regs*) ;
 int bpf_ktime_get_ns () ;
 int bpf_map_update_elem (int *,long*,int *,int ) ;
 int my_map ;

int bpf_prog1(struct pt_regs *ctx)
{
 long rq = PT_REGS_PARM1(ctx);
 u64 val = bpf_ktime_get_ns();

 bpf_map_update_elem(&my_map, &rq, &val, BPF_ANY);
 return 0;
}

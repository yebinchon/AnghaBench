
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 long PT_REGS_PARM2 (struct pt_regs*) ;
 int bpf_map_delete_elem (int *,long*) ;
 int my_map ;

int bpf_prog1(struct pt_regs *ctx)
{
 long ptr = PT_REGS_PARM2(ctx);

 bpf_map_delete_elem(&my_map, &ptr);
 return 0;
}

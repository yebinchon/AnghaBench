
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int bpf_override_return (struct pt_regs*,unsigned long) ;

int bpf_prog1(struct pt_regs *ctx)
{
 unsigned long rc = -12;

 bpf_override_return(ctx, rc);
 return 0;
}

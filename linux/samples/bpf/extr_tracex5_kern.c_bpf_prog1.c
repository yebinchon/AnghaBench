
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
typedef int fmt ;


 scalar_t__ PT_REGS_PARM1 (struct pt_regs*) ;
 int __NR_getsid ;
 int __NR_getuid ;
 int bpf_tail_call (struct pt_regs*,int *,int) ;
 int bpf_trace_printk (char*,int,int) ;
 int progs ;

int bpf_prog1(struct pt_regs *ctx)
{
 int sc_nr = (int)PT_REGS_PARM1(ctx);


 bpf_tail_call(ctx, &progs, sc_nr);


 if (sc_nr >= __NR_getuid && sc_nr <= __NR_getsid) {
  char fmt[] = "syscall=%d (one of get/set uid/pid/gid)\n";
  bpf_trace_printk(fmt, sizeof(fmt), sc_nr);
 }
 return 0;
}

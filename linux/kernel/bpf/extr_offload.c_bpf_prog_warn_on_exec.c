
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_insn {int dummy; } ;


 int WARN (int,char*) ;

__attribute__((used)) static unsigned int bpf_prog_warn_on_exec(const void *ctx,
       const struct bpf_insn *insn)
{
 WARN(1, "attempt to execute device eBPF program on the host!");
 return 0;
}

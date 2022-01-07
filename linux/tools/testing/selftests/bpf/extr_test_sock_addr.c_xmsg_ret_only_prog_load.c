
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_addr_test {int dummy; } ;
struct bpf_insn {int dummy; } ;
typedef int int32_t ;
typedef int insns ;


 struct bpf_insn BPF_EXIT_INSN () ;
 struct bpf_insn BPF_MOV64_IMM (int ,int ) ;
 int BPF_REG_0 ;
 int load_insns (struct sock_addr_test const*,struct bpf_insn*,int) ;

__attribute__((used)) static int xmsg_ret_only_prog_load(const struct sock_addr_test *test,
       int32_t rc)
{
 struct bpf_insn insns[] = {

  BPF_MOV64_IMM(BPF_REG_0, rc),
  BPF_EXIT_INSN(),
 };
 return load_insns(test, insns, sizeof(insns) / sizeof(struct bpf_insn));
}

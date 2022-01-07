
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct bpf_insn {int code; } ;


 scalar_t__ BPF_CLASS (int ) ;
 scalar_t__ BPF_JMP ;
 scalar_t__ BPF_JMP32 ;
 scalar_t__ BPF_ST ;
 scalar_t__ BPF_STX ;

__attribute__((used)) static bool insn_no_def(struct bpf_insn *insn)
{
 u8 class = BPF_CLASS(insn->code);

 return (class == BPF_JMP || class == BPF_JMP32 ||
  class == BPF_STX || class == BPF_ST);
}

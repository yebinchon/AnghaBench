
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ BPF_CALL ;
 scalar_t__ BPF_CLASS (scalar_t__) ;
 scalar_t__ BPF_EXIT ;
 scalar_t__ BPF_JA ;
 scalar_t__ BPF_JMP ;
 scalar_t__ BPF_JMP32 ;
 scalar_t__ BPF_OP (scalar_t__) ;

__attribute__((used)) static bool insn_is_cond_jump(u8 code)
{
 u8 op;

 if (BPF_CLASS(code) == BPF_JMP32)
  return 1;

 if (BPF_CLASS(code) != BPF_JMP)
  return 0;

 op = BPF_OP(code);
 return op != BPF_JA && op != BPF_EXIT && op != BPF_CALL;
}

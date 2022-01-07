
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ BPF_CLASS (int ) ;
 scalar_t__ BPF_JMP ;
 scalar_t__ BPF_JMP32 ;

__attribute__((used)) static bool is_jmp_insn(u8 code)
{
 return BPF_CLASS(code) == BPF_JMP || BPF_CLASS(code) == BPF_JMP32;
}

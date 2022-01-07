
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_verifier_env {scalar_t__ allow_ptr_leaks; } ;
struct bpf_insn {int code; } ;


 scalar_t__ BPF_K ;
 scalar_t__ BPF_SRC (int ) ;

__attribute__((used)) static bool can_skip_alu_sanitation(const struct bpf_verifier_env *env,
        const struct bpf_insn *insn)
{
 return env->allow_ptr_leaks || BPF_SRC(insn->code) == BPF_K;
}

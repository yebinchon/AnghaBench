
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_verifier_state {struct bpf_func_state** frame; } ;
struct bpf_verifier_env {struct bpf_verifier_state* cur_state; } ;
struct bpf_reg_state {size_t frameno; } ;
struct bpf_func_state {int dummy; } ;



__attribute__((used)) static struct bpf_func_state *func(struct bpf_verifier_env *env,
       const struct bpf_reg_state *reg)
{
 struct bpf_verifier_state *cur = env->cur_state;

 return cur->frame[reg->frameno];
}

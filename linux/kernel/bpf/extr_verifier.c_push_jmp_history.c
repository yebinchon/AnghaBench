
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bpf_verifier_state {int jmp_history_cnt; struct bpf_idx_pair* jmp_history; } ;
struct bpf_verifier_env {int prev_insn_idx; int insn_idx; } ;
struct bpf_idx_pair {int prev_idx; int idx; } ;


 int ENOMEM ;
 int GFP_USER ;
 struct bpf_idx_pair* krealloc (struct bpf_idx_pair*,int,int ) ;

__attribute__((used)) static int push_jmp_history(struct bpf_verifier_env *env,
       struct bpf_verifier_state *cur)
{
 u32 cnt = cur->jmp_history_cnt;
 struct bpf_idx_pair *p;

 cnt++;
 p = krealloc(cur->jmp_history, cnt * sizeof(*p), GFP_USER);
 if (!p)
  return -ENOMEM;
 p[cnt - 1].idx = env->insn_idx;
 p[cnt - 1].prev_idx = env->prev_insn_idx;
 cur->jmp_history = p;
 cur->jmp_history_cnt = cnt;
 return 0;
}

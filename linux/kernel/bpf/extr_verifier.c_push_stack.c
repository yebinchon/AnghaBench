
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bpf_verifier_state {int speculative; TYPE_1__* parent; } ;
struct bpf_verifier_stack_elem {int insn_idx; int prev_insn_idx; struct bpf_verifier_state st; struct bpf_verifier_stack_elem* next; } ;
struct bpf_verifier_env {scalar_t__ stack_size; struct bpf_verifier_state* cur_state; struct bpf_verifier_stack_elem* head; } ;
struct TYPE_2__ {int branches; } ;


 scalar_t__ BPF_COMPLEXITY_LIMIT_JMP_SEQ ;
 int GFP_KERNEL ;
 int copy_verifier_state (struct bpf_verifier_state*,struct bpf_verifier_state*) ;
 int free_verifier_state (struct bpf_verifier_state*,int) ;
 struct bpf_verifier_stack_elem* kzalloc (int,int ) ;
 int pop_stack (struct bpf_verifier_env*,int *,int *) ;
 int verbose (struct bpf_verifier_env*,char*,scalar_t__) ;

__attribute__((used)) static struct bpf_verifier_state *push_stack(struct bpf_verifier_env *env,
          int insn_idx, int prev_insn_idx,
          bool speculative)
{
 struct bpf_verifier_state *cur = env->cur_state;
 struct bpf_verifier_stack_elem *elem;
 int err;

 elem = kzalloc(sizeof(struct bpf_verifier_stack_elem), GFP_KERNEL);
 if (!elem)
  goto err;

 elem->insn_idx = insn_idx;
 elem->prev_insn_idx = prev_insn_idx;
 elem->next = env->head;
 env->head = elem;
 env->stack_size++;
 err = copy_verifier_state(&elem->st, cur);
 if (err)
  goto err;
 elem->st.speculative |= speculative;
 if (env->stack_size > BPF_COMPLEXITY_LIMIT_JMP_SEQ) {
  verbose(env, "The sequence of %d jumps is too complex.\n",
   env->stack_size);
  goto err;
 }
 if (elem->st.parent) {
  ++elem->st.parent->branches;
 }
 return &elem->st;
err:
 free_verifier_state(env->cur_state, 1);
 env->cur_state = ((void*)0);

 while (!pop_stack(env, ((void*)0), ((void*)0)));
 return ((void*)0);
}

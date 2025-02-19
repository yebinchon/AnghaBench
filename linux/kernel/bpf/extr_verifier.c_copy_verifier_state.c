
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bpf_verifier_state {int jmp_history_cnt; int curframe; struct bpf_func_state** frame; int last_insn_idx; int first_insn_idx; int parent; int branches; int active_spin_lock; int speculative; int jmp_history; } ;
struct bpf_idx_pair {int dummy; } ;
struct bpf_func_state {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int GFP_USER ;
 int copy_func_state (struct bpf_func_state*,struct bpf_func_state*) ;
 int free_func_state (struct bpf_func_state*) ;
 int kfree (int ) ;
 int kmalloc (int,int ) ;
 struct bpf_func_state* kzalloc (int,int ) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static int copy_verifier_state(struct bpf_verifier_state *dst_state,
          const struct bpf_verifier_state *src)
{
 struct bpf_func_state *dst;
 u32 jmp_sz = sizeof(struct bpf_idx_pair) * src->jmp_history_cnt;
 int i, err;

 if (dst_state->jmp_history_cnt < src->jmp_history_cnt) {
  kfree(dst_state->jmp_history);
  dst_state->jmp_history = kmalloc(jmp_sz, GFP_USER);
  if (!dst_state->jmp_history)
   return -ENOMEM;
 }
 memcpy(dst_state->jmp_history, src->jmp_history, jmp_sz);
 dst_state->jmp_history_cnt = src->jmp_history_cnt;


 for (i = src->curframe + 1; i <= dst_state->curframe; i++) {
  free_func_state(dst_state->frame[i]);
  dst_state->frame[i] = ((void*)0);
 }
 dst_state->speculative = src->speculative;
 dst_state->curframe = src->curframe;
 dst_state->active_spin_lock = src->active_spin_lock;
 dst_state->branches = src->branches;
 dst_state->parent = src->parent;
 dst_state->first_insn_idx = src->first_insn_idx;
 dst_state->last_insn_idx = src->last_insn_idx;
 for (i = 0; i <= src->curframe; i++) {
  dst = dst_state->frame[i];
  if (!dst) {
   dst = kzalloc(sizeof(*dst), GFP_KERNEL);
   if (!dst)
    return -ENOMEM;
   dst_state->frame[i] = dst;
  }
  err = copy_func_state(dst, src->frame[i]);
  if (err)
   return err;
 }
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct bpf_verifier_state {int insn_idx; int branches; int first_insn_idx; int curframe; struct bpf_func_state** frame; struct bpf_verifier_state* parent; int last_insn_idx; } ;
struct bpf_verifier_state_list {int hit_cnt; int miss_cnt; struct bpf_verifier_state_list* next; struct bpf_verifier_state state; } ;
struct bpf_verifier_env {int jmps_processed; int prev_jmps_processed; int insn_processed; int prev_insn_processed; int max_states_per_insn; int peak_states; int total_states; int allow_ptr_leaks; struct bpf_verifier_state_list* free_list; TYPE_3__* insn_aux_data; int prev_insn_idx; scalar_t__ test_state_freq; struct bpf_verifier_state* cur_state; } ;
struct bpf_func_state {int allocated_stack; TYPE_2__* stack; TYPE_4__* regs; } ;
struct TYPE_8__ {int live; struct TYPE_8__* parent; } ;
struct TYPE_7__ {int prune_point; } ;
struct TYPE_5__ {struct TYPE_5__* parent; void* live; } ;
struct TYPE_6__ {TYPE_1__ spilled_ptr; } ;


 int BPF_COMPLEXITY_LIMIT_STATES ;
 int BPF_REG_6 ;
 int BPF_REG_FP ;
 int BPF_REG_SIZE ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int REG_LIVE_DONE ;
 void* REG_LIVE_NONE ;
 int WARN_ONCE (int,char*,int,...) ;
 int clean_live_states (struct bpf_verifier_env*,int,struct bpf_verifier_state*) ;
 int clear_jmp_history (struct bpf_verifier_state*) ;
 int copy_verifier_state (struct bpf_verifier_state*,struct bpf_verifier_state*) ;
 struct bpf_verifier_state_list** explored_state (struct bpf_verifier_env*,int) ;
 int free_verifier_state (struct bpf_verifier_state*,int) ;
 int kfree (struct bpf_verifier_state_list*) ;
 struct bpf_verifier_state_list* kzalloc (int,int ) ;
 int propagate_liveness (struct bpf_verifier_env*,struct bpf_verifier_state*,struct bpf_verifier_state*) ;
 int propagate_precision (struct bpf_verifier_env*,struct bpf_verifier_state*) ;
 int push_jmp_history (struct bpf_verifier_env*,struct bpf_verifier_state*) ;
 scalar_t__ states_equal (struct bpf_verifier_env*,struct bpf_verifier_state*,struct bpf_verifier_state*) ;
 scalar_t__ states_maybe_looping (struct bpf_verifier_state*,struct bpf_verifier_state*) ;
 int verbose (struct bpf_verifier_env*,char*,int) ;
 int verbose_linfo (struct bpf_verifier_env*,int,char*) ;

__attribute__((used)) static int is_state_visited(struct bpf_verifier_env *env, int insn_idx)
{
 struct bpf_verifier_state_list *new_sl;
 struct bpf_verifier_state_list *sl, **pprev;
 struct bpf_verifier_state *cur = env->cur_state, *new;
 int i, j, err, states_cnt = 0;
 bool add_new_state = env->test_state_freq ? 1 : 0;

 cur->last_insn_idx = env->prev_insn_idx;
 if (!env->insn_aux_data[insn_idx].prune_point)



  return 0;
 if (env->jmps_processed - env->prev_jmps_processed >= 2 &&
     env->insn_processed - env->prev_insn_processed >= 8)
  add_new_state = 1;

 pprev = explored_state(env, insn_idx);
 sl = *pprev;

 clean_live_states(env, insn_idx, cur);

 while (sl) {
  states_cnt++;
  if (sl->state.insn_idx != insn_idx)
   goto next;
  if (sl->state.branches) {
   if (states_maybe_looping(&sl->state, cur) &&
       states_equal(env, &sl->state, cur)) {
    verbose_linfo(env, insn_idx, "; ");
    verbose(env, "infinite loop detected at insn %d\n", insn_idx);
    return -EINVAL;
   }
   if (env->jmps_processed - env->prev_jmps_processed < 20 &&
       env->insn_processed - env->prev_insn_processed < 100)
    add_new_state = 0;
   goto miss;
  }
  if (states_equal(env, &sl->state, cur)) {
   sl->hit_cnt++;
   err = propagate_liveness(env, &sl->state, cur);






   err = err ? : push_jmp_history(env, cur);
   err = err ? : propagate_precision(env, &sl->state);
   if (err)
    return err;
   return 1;
  }
miss:






  if (add_new_state)
   sl->miss_cnt++;





  if (sl->miss_cnt > sl->hit_cnt * 3 + 3) {



   *pprev = sl->next;
   if (sl->state.frame[0]->regs[0].live & REG_LIVE_DONE) {
    u32 br = sl->state.branches;

    WARN_ONCE(br,
       "BUG live_done but branches_to_explore %d\n",
       br);
    free_verifier_state(&sl->state, 0);
    kfree(sl);
    env->peak_states--;
   } else {




    sl->next = env->free_list;
    env->free_list = sl;
   }
   sl = *pprev;
   continue;
  }
next:
  pprev = &sl->next;
  sl = *pprev;
 }

 if (env->max_states_per_insn < states_cnt)
  env->max_states_per_insn = states_cnt;

 if (!env->allow_ptr_leaks && states_cnt > BPF_COMPLEXITY_LIMIT_STATES)
  return push_jmp_history(env, cur);

 if (!add_new_state)
  return push_jmp_history(env, cur);
 new_sl = kzalloc(sizeof(struct bpf_verifier_state_list), GFP_KERNEL);
 if (!new_sl)
  return -ENOMEM;
 env->total_states++;
 env->peak_states++;
 env->prev_jmps_processed = env->jmps_processed;
 env->prev_insn_processed = env->insn_processed;


 new = &new_sl->state;
 err = copy_verifier_state(new, cur);
 if (err) {
  free_verifier_state(new, 0);
  kfree(new_sl);
  return err;
 }
 new->insn_idx = insn_idx;
 WARN_ONCE(new->branches != 1,
    "BUG is_state_visited:branches_to_explore=%d insn %d\n", new->branches, insn_idx);

 cur->parent = new;
 cur->first_insn_idx = insn_idx;
 clear_jmp_history(cur);
 new_sl->next = *explored_state(env, insn_idx);
 *explored_state(env, insn_idx) = new_sl;
 for (j = 0; j <= cur->curframe; j++) {
  for (i = j < cur->curframe ? BPF_REG_6 : 0; i < BPF_REG_FP; i++)
   cur->frame[j]->regs[i].parent = &new->frame[j]->regs[i];
  for (i = 0; i < BPF_REG_FP; i++)
   cur->frame[j]->regs[i].live = REG_LIVE_NONE;
 }


 for (j = 0; j <= cur->curframe; j++) {
  struct bpf_func_state *frame = cur->frame[j];
  struct bpf_func_state *newframe = new->frame[j];

  for (i = 0; i < frame->allocated_stack / BPF_REG_SIZE; i++) {
   frame->stack[i].spilled_ptr.live = REG_LIVE_NONE;
   frame->stack[i].spilled_ptr.parent =
      &newframe->stack[i].spilled_ptr;
  }
 }
 return 0;
}

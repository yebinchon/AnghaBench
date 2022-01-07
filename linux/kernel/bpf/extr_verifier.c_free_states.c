
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_verifier_state_list {int state; struct bpf_verifier_state_list* next; } ;
struct bpf_verifier_env {struct bpf_verifier_state_list** explored_states; struct bpf_verifier_state_list* free_list; } ;


 int free_verifier_state (int *,int) ;
 int kfree (struct bpf_verifier_state_list*) ;
 int kvfree (struct bpf_verifier_state_list**) ;
 int state_htab_size (struct bpf_verifier_env*) ;

__attribute__((used)) static void free_states(struct bpf_verifier_env *env)
{
 struct bpf_verifier_state_list *sl, *sln;
 int i;

 sl = env->free_list;
 while (sl) {
  sln = sl->next;
  free_verifier_state(&sl->state, 0);
  kfree(sl);
  sl = sln;
 }

 if (!env->explored_states)
  return;

 for (i = 0; i < state_htab_size(env); i++) {
  sl = env->explored_states[i];

  while (sl) {
   sln = sl->next;
   free_verifier_state(&sl->state, 0);
   kfree(sl);
   sl = sln;
  }
 }

 kvfree(env->explored_states);
}

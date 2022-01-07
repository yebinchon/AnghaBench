
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct bpf_verifier_state {struct bpf_verifier_state* parent; scalar_t__ branches; } ;
struct bpf_verifier_env {int dummy; } ;


 int WARN_ONCE (int,char*,scalar_t__) ;

__attribute__((used)) static void update_branch_counts(struct bpf_verifier_env *env, struct bpf_verifier_state *st)
{
 while (st) {
  u32 br = --st->branches;




  WARN_ONCE((int)br < 0,
     "BUG update_branch_counts:branches_to_explore=%d\n",
     br);
  if (br)
   break;
  st = st->parent;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bpf_verifier_state {int curframe; TYPE_2__** frame; } ;
struct bpf_verifier_env {int dummy; } ;
struct TYPE_4__ {TYPE_1__* regs; } ;
struct TYPE_3__ {int live; } ;


 int REG_LIVE_DONE ;
 int clean_func_state (struct bpf_verifier_env*,TYPE_2__*) ;

__attribute__((used)) static void clean_verifier_state(struct bpf_verifier_env *env,
     struct bpf_verifier_state *st)
{
 int i;

 if (st->frame[0]->regs[0].live & REG_LIVE_DONE)

  return;

 for (i = 0; i <= st->curframe; i++)
  clean_func_state(env, st->frame[i]);
}

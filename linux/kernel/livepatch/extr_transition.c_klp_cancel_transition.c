
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* mod; } ;
struct TYPE_3__ {int name; } ;


 scalar_t__ KLP_PATCHED ;
 scalar_t__ KLP_UNPATCHED ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int klp_complete_transition () ;
 scalar_t__ klp_target_state ;
 TYPE_2__* klp_transition_patch ;
 int pr_debug (char*,int ) ;

void klp_cancel_transition(void)
{
 if (WARN_ON_ONCE(klp_target_state != KLP_PATCHED))
  return;

 pr_debug("'%s': canceling patching transition, going to unpatch\n",
   klp_transition_patch->mod->name);

 klp_target_state = KLP_UNPATCHED;
 klp_complete_transition();
}

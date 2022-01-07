
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hlist_node {int dummy; } ;
struct TYPE_4__ {int single; } ;
struct TYPE_3__ {int single; } ;
struct cpuhp_step {TYPE_2__ teardown; TYPE_1__ startup; } ;
typedef enum cpuhp_state { ____Placeholder_cpuhp_state } cpuhp_state ;


 int BUG_ON (int) ;
 struct cpuhp_step* cpuhp_get_step (int) ;
 int cpuhp_invoke_ap_callback (int,int,int,struct hlist_node*) ;
 int cpuhp_invoke_callback (int,int,int,struct hlist_node*,int *) ;
 scalar_t__ cpuhp_is_ap_state (int) ;

__attribute__((used)) static int cpuhp_issue_call(int cpu, enum cpuhp_state state, bool bringup,
       struct hlist_node *node)
{
 struct cpuhp_step *sp = cpuhp_get_step(state);
 int ret;





 if ((bringup && !sp->startup.single) ||
     (!bringup && !sp->teardown.single))
  return 0;
 ret = cpuhp_invoke_callback(cpu, state, bringup, node, ((void*)0));

 BUG_ON(ret && !bringup);
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_chain {int dummy; } ;
struct tc_action {int tcfa_action; int goto_chain; } ;


 int rcu_swap_protected (int ,struct tcf_chain*,int) ;

struct tcf_chain *tcf_action_set_ctrlact(struct tc_action *a, int action,
      struct tcf_chain *goto_chain)
{
 a->tcfa_action = action;
 rcu_swap_protected(a->goto_chain, goto_chain, 1);
 return goto_chain;
}

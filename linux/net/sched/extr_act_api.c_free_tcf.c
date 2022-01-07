
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_chain {int dummy; } ;
struct tc_action {int act_cookie; int cpu_qstats; int cpu_bstats_hw; int cpu_bstats; int goto_chain; } ;


 int free_percpu (int ) ;
 int kfree (struct tc_action*) ;
 struct tcf_chain* rcu_dereference_protected (int ,int) ;
 int tcf_chain_put_by_act (struct tcf_chain*) ;
 int tcf_set_action_cookie (int *,int *) ;

__attribute__((used)) static void free_tcf(struct tc_action *p)
{
 struct tcf_chain *chain = rcu_dereference_protected(p->goto_chain, 1);

 free_percpu(p->cpu_bstats);
 free_percpu(p->cpu_bstats_hw);
 free_percpu(p->cpu_qstats);

 tcf_set_action_cookie(&p->act_cookie, ((void*)0));
 if (chain)
  tcf_chain_put_by_act(chain);

 kfree(p);
}

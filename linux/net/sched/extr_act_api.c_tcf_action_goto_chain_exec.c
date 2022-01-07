
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_result {void* goto_tp; } ;
struct tcf_chain {int filter_chain; } ;
struct tc_action {int goto_chain; } ;


 void* rcu_dereference_bh (int ) ;

__attribute__((used)) static void tcf_action_goto_chain_exec(const struct tc_action *a,
           struct tcf_result *res)
{
 const struct tcf_chain *chain = rcu_dereference_bh(a->goto_chain);

 res->goto_tp = rcu_dereference_bh(chain->filter_chain);
}

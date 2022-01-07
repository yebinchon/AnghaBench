
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int next; } ;
struct tcf_chain_info {scalar_t__* pprev; } ;
struct tcf_chain {scalar_t__ filter_chain; scalar_t__ flushing; } ;


 int EAGAIN ;
 int RCU_INIT_POINTER (int ,int ) ;
 int rcu_assign_pointer (scalar_t__,struct tcf_proto*) ;
 int tcf_chain0_head_change (struct tcf_chain*,struct tcf_proto*) ;
 int tcf_chain_tp_prev (struct tcf_chain*,struct tcf_chain_info*) ;
 int tcf_proto_get (struct tcf_proto*) ;

__attribute__((used)) static int tcf_chain_tp_insert(struct tcf_chain *chain,
          struct tcf_chain_info *chain_info,
          struct tcf_proto *tp)
{
 if (chain->flushing)
  return -EAGAIN;

 if (*chain_info->pprev == chain->filter_chain)
  tcf_chain0_head_change(chain, tp);
 tcf_proto_get(tp);
 RCU_INIT_POINTER(tp->next, tcf_chain_tp_prev(chain, chain_info));
 rcu_assign_pointer(*chain_info->pprev, tp);

 return 0;
}

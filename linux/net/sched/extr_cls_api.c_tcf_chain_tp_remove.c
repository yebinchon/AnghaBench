
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int dummy; } ;
struct tcf_chain_info {int * pprev; int next; } ;
struct tcf_chain {struct tcf_proto* filter_chain; } ;


 int RCU_INIT_POINTER (int ,struct tcf_proto*) ;
 int tcf_chain0_head_change (struct tcf_chain*,struct tcf_proto*) ;
 struct tcf_proto* tcf_chain_dereference (int ,struct tcf_chain*) ;
 int tcf_proto_mark_delete (struct tcf_proto*) ;

__attribute__((used)) static void tcf_chain_tp_remove(struct tcf_chain *chain,
    struct tcf_chain_info *chain_info,
    struct tcf_proto *tp)
{
 struct tcf_proto *next = tcf_chain_dereference(chain_info->next, chain);

 tcf_proto_mark_delete(tp);
 if (tp == chain->filter_chain)
  tcf_chain0_head_change(chain, next);
 RCU_INIT_POINTER(*chain_info->pprev, next);
}

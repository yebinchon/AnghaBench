
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tcf_proto {scalar_t__ prio; scalar_t__ protocol; struct tcf_proto* next; } ;
struct tcf_chain_info {struct tcf_proto* next; struct tcf_proto** pprev; } ;
struct tcf_chain {struct tcf_proto* filter_chain; } ;


 int EINVAL ;
 struct tcf_proto* ERR_PTR (int ) ;
 struct tcf_proto* tcf_chain_dereference (struct tcf_proto*,struct tcf_chain*) ;
 int tcf_proto_get (struct tcf_proto*) ;

__attribute__((used)) static struct tcf_proto *tcf_chain_tp_find(struct tcf_chain *chain,
        struct tcf_chain_info *chain_info,
        u32 protocol, u32 prio,
        bool prio_allocate)
{
 struct tcf_proto **pprev;
 struct tcf_proto *tp;


 for (pprev = &chain->filter_chain;
      (tp = tcf_chain_dereference(*pprev, chain));
      pprev = &tp->next) {
  if (tp->prio >= prio) {
   if (tp->prio == prio) {
    if (prio_allocate ||
        (tp->protocol != protocol && protocol))
     return ERR_PTR(-EINVAL);
   } else {
    tp = ((void*)0);
   }
   break;
  }
 }
 chain_info->pprev = pprev;
 if (tp) {
  chain_info->next = tp->next;
  tcf_proto_get(tp);
 } else {
  chain_info->next = ((void*)0);
 }
 return tp;
}

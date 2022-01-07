
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tcf_proto {scalar_t__ prio; int next; int deleting; } ;
struct tcf_chain {int filter_chain_lock; int filter_chain; } ;


 int ASSERT_RTNL () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct tcf_proto* tcf_chain_dereference (int ,struct tcf_chain*) ;
 int tcf_proto_get (struct tcf_proto*) ;
 scalar_t__ tcf_proto_is_deleting (struct tcf_proto*) ;

__attribute__((used)) static struct tcf_proto *
__tcf_get_next_proto(struct tcf_chain *chain, struct tcf_proto *tp)
{
 u32 prio = 0;

 ASSERT_RTNL();
 mutex_lock(&chain->filter_chain_lock);

 if (!tp) {
  tp = tcf_chain_dereference(chain->filter_chain, chain);
 } else if (tcf_proto_is_deleting(tp)) {




  prio = tp->prio + 1;
  tp = tcf_chain_dereference(chain->filter_chain, chain);

  for (; tp; tp = tcf_chain_dereference(tp->next, chain))
   if (!tp->deleting && tp->prio >= prio)
    break;
 } else {
  tp = tcf_chain_dereference(tp->next, chain);
 }

 if (tp)
  tcf_proto_get(tp);

 mutex_unlock(&chain->filter_chain_lock);

 return tp;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int dummy; } ;
struct tcf_chain {int dummy; } ;


 struct tcf_proto* __tcf_get_next_proto (struct tcf_chain*,struct tcf_proto*) ;
 int tcf_proto_put (struct tcf_proto*,int,int *) ;

struct tcf_proto *
tcf_get_next_proto(struct tcf_chain *chain, struct tcf_proto *tp,
     bool rtnl_held)
{
 struct tcf_proto *tp_next = __tcf_get_next_proto(chain, tp);

 if (tp)
  tcf_proto_put(tp, rtnl_held, ((void*)0));

 return tp_next;
}

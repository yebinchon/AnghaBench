
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int dummy; } ;
struct mini_Qdisc_pair {int dummy; } ;


 int mini_qdisc_pair_swap (struct mini_Qdisc_pair*,struct tcf_proto*) ;

__attribute__((used)) static void clsact_chain_head_change(struct tcf_proto *tp_head, void *priv)
{
 struct mini_Qdisc_pair *miniqp = priv;

 mini_qdisc_pair_swap(miniqp, tp_head);
}

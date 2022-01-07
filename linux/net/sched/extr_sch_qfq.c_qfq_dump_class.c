
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tcmsg {int tcm_info; int tcm_handle; int tcm_parent; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int classid; } ;
struct qfq_class {TYPE_3__* agg; TYPE_2__* qdisc; TYPE_1__ common; } ;
struct nlattr {int dummy; } ;
struct Qdisc {int dummy; } ;
struct TYPE_6__ {int lmax; int class_weight; } ;
struct TYPE_5__ {int handle; } ;


 int EMSGSIZE ;
 int TCA_OPTIONS ;
 int TCA_QFQ_LMAX ;
 int TCA_QFQ_WEIGHT ;
 int TC_H_ROOT ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int qfq_dump_class(struct Qdisc *sch, unsigned long arg,
     struct sk_buff *skb, struct tcmsg *tcm)
{
 struct qfq_class *cl = (struct qfq_class *)arg;
 struct nlattr *nest;

 tcm->tcm_parent = TC_H_ROOT;
 tcm->tcm_handle = cl->common.classid;
 tcm->tcm_info = cl->qdisc->handle;

 nest = nla_nest_start_noflag(skb, TCA_OPTIONS);
 if (nest == ((void*)0))
  goto nla_put_failure;
 if (nla_put_u32(skb, TCA_QFQ_WEIGHT, cl->agg->class_weight) ||
     nla_put_u32(skb, TCA_QFQ_LMAX, cl->agg->lmax))
  goto nla_put_failure;
 return nla_nest_end(skb, nest);

nla_put_failure:
 nla_nest_cancel(skb, nest);
 return -EMSGSIZE;
}

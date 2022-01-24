#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tcmsg {int /*<<< orphan*/  tcm_info; int /*<<< orphan*/  tcm_handle; int /*<<< orphan*/  tcm_parent; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  classid; } ;
struct qfq_class {TYPE_3__* agg; TYPE_2__* qdisc; TYPE_1__ common; } ;
struct nlattr {int dummy; } ;
struct Qdisc {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  lmax; int /*<<< orphan*/  class_weight; } ;
struct TYPE_5__ {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  TCA_OPTIONS ; 
 int /*<<< orphan*/  TCA_QFQ_LMAX ; 
 int /*<<< orphan*/  TCA_QFQ_WEIGHT ; 
 int /*<<< orphan*/  TC_H_ROOT ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct nlattr*) ; 
 int FUNC1 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct Qdisc *sch, unsigned long arg,
			  struct sk_buff *skb, struct tcmsg *tcm)
{
	struct qfq_class *cl = (struct qfq_class *)arg;
	struct nlattr *nest;

	tcm->tcm_parent	= TC_H_ROOT;
	tcm->tcm_handle	= cl->common.classid;
	tcm->tcm_info	= cl->qdisc->handle;

	nest = FUNC2(skb, TCA_OPTIONS);
	if (nest == NULL)
		goto nla_put_failure;
	if (FUNC3(skb, TCA_QFQ_WEIGHT, cl->agg->class_weight) ||
	    FUNC3(skb, TCA_QFQ_LMAX, cl->agg->lmax))
		goto nla_put_failure;
	return FUNC1(skb, nest);

nla_put_failure:
	FUNC0(skb, nest);
	return -EMSGSIZE;
}
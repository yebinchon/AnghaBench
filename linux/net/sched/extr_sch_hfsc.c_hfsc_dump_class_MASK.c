#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct tcmsg {int /*<<< orphan*/  tcm_info; int /*<<< orphan*/  tcm_handle; int /*<<< orphan*/  tcm_parent; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  classid; } ;
struct hfsc_class {scalar_t__ level; TYPE_3__* qdisc; TYPE_2__ cl_common; TYPE_4__* cl_parent; } ;
struct Qdisc {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  classid; } ;
struct TYPE_8__ {TYPE_1__ cl_common; } ;
struct TYPE_7__ {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  TCA_OPTIONS ; 
 int /*<<< orphan*/  TC_H_ROOT ; 
 scalar_t__ FUNC0 (struct sk_buff*,struct hfsc_class*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlattr*) ; 
 int FUNC2 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct Qdisc *sch, unsigned long arg, struct sk_buff *skb,
		struct tcmsg *tcm)
{
	struct hfsc_class *cl = (struct hfsc_class *)arg;
	struct nlattr *nest;

	tcm->tcm_parent = cl->cl_parent ? cl->cl_parent->cl_common.classid :
					  TC_H_ROOT;
	tcm->tcm_handle = cl->cl_common.classid;
	if (cl->level == 0)
		tcm->tcm_info = cl->qdisc->handle;

	nest = FUNC3(skb, TCA_OPTIONS);
	if (nest == NULL)
		goto nla_put_failure;
	if (FUNC0(skb, cl) < 0)
		goto nla_put_failure;
	return FUNC2(skb, nest);

 nla_put_failure:
	FUNC1(skb, nest);
	return -EMSGSIZE;
}
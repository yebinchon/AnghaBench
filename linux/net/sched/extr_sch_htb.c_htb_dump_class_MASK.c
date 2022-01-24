#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct tcmsg {int /*<<< orphan*/  tcm_info; int /*<<< orphan*/  tcm_handle; int /*<<< orphan*/  tcm_parent; } ;
struct tc_htb_opt {scalar_t__ level; int /*<<< orphan*/  prio; int /*<<< orphan*/  quantum; void* cbuffer; int /*<<< orphan*/  ceil; void* buffer; int /*<<< orphan*/  rate; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_12__ {unsigned long long rate_bytes_ps; } ;
struct TYPE_11__ {TYPE_4__* q; } ;
struct TYPE_9__ {int /*<<< orphan*/  classid; } ;
struct htb_class {TYPE_6__ ceil; TYPE_6__ rate; scalar_t__ level; int /*<<< orphan*/  prio; int /*<<< orphan*/  quantum; int /*<<< orphan*/  cbuffer; int /*<<< orphan*/  buffer; TYPE_5__ leaf; TYPE_3__ common; TYPE_2__* parent; } ;
struct Qdisc {int dummy; } ;
typedef  int /*<<< orphan*/  opt ;
struct TYPE_10__ {int /*<<< orphan*/  handle; } ;
struct TYPE_7__ {int /*<<< orphan*/  classid; } ;
struct TYPE_8__ {TYPE_1__ common; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TCA_HTB_CEIL64 ; 
 int /*<<< orphan*/  TCA_HTB_PAD ; 
 int /*<<< orphan*/  TCA_HTB_PARMS ; 
 int /*<<< orphan*/  TCA_HTB_RATE64 ; 
 int /*<<< orphan*/  TCA_OPTIONS ; 
 int /*<<< orphan*/  TC_H_ROOT ; 
 int /*<<< orphan*/  FUNC1 (struct tc_htb_opt*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct nlattr*) ; 
 int FUNC3 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int,struct tc_htb_opt*) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,unsigned long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_6__*) ; 

__attribute__((used)) static int FUNC8(struct Qdisc *sch, unsigned long arg,
			  struct sk_buff *skb, struct tcmsg *tcm)
{
	struct htb_class *cl = (struct htb_class *)arg;
	struct nlattr *nest;
	struct tc_htb_opt opt;

	/* Its safe to not acquire qdisc lock. As we hold RTNL,
	 * no change can happen on the class parameters.
	 */
	tcm->tcm_parent = cl->parent ? cl->parent->common.classid : TC_H_ROOT;
	tcm->tcm_handle = cl->common.classid;
	if (!cl->level && cl->leaf.q)
		tcm->tcm_info = cl->leaf.q->handle;

	nest = FUNC4(skb, TCA_OPTIONS);
	if (nest == NULL)
		goto nla_put_failure;

	FUNC1(&opt, 0, sizeof(opt));

	FUNC7(&opt.rate, &cl->rate);
	opt.buffer = FUNC0(cl->buffer);
	FUNC7(&opt.ceil, &cl->ceil);
	opt.cbuffer = FUNC0(cl->cbuffer);
	opt.quantum = cl->quantum;
	opt.prio = cl->prio;
	opt.level = cl->level;
	if (FUNC5(skb, TCA_HTB_PARMS, sizeof(opt), &opt))
		goto nla_put_failure;
	if ((cl->rate.rate_bytes_ps >= (1ULL << 32)) &&
	    FUNC6(skb, TCA_HTB_RATE64, cl->rate.rate_bytes_ps,
			      TCA_HTB_PAD))
		goto nla_put_failure;
	if ((cl->ceil.rate_bytes_ps >= (1ULL << 32)) &&
	    FUNC6(skb, TCA_HTB_CEIL64, cl->ceil.rate_bytes_ps,
			      TCA_HTB_PAD))
		goto nla_put_failure;

	return FUNC3(skb, nest);

nla_put_failure:
	FUNC2(skb, nest);
	return -1;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct tc_cbs_qopt {int /*<<< orphan*/  offload; void* idleslope; void* sendslope; int /*<<< orphan*/  locredit; int /*<<< orphan*/  hicredit; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct cbs_sched_data {int /*<<< orphan*/  offload; int /*<<< orphan*/  idleslope; int /*<<< orphan*/  sendslope; int /*<<< orphan*/  locredit; int /*<<< orphan*/  hicredit; } ;
struct Qdisc {int dummy; } ;
typedef  int /*<<< orphan*/  opt ;

/* Variables and functions */
 int /*<<< orphan*/  BYTES_PER_KBIT ; 
 int /*<<< orphan*/  TCA_CBS_PARMS ; 
 int /*<<< orphan*/  TCA_OPTIONS ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlattr*) ; 
 int FUNC2 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int,struct tc_cbs_qopt*) ; 
 struct cbs_sched_data* FUNC5 (struct Qdisc*) ; 

__attribute__((used)) static int FUNC6(struct Qdisc *sch, struct sk_buff *skb)
{
	struct cbs_sched_data *q = FUNC5(sch);
	struct tc_cbs_qopt opt = { };
	struct nlattr *nest;

	nest = FUNC3(skb, TCA_OPTIONS);
	if (!nest)
		goto nla_put_failure;

	opt.hicredit = q->hicredit;
	opt.locredit = q->locredit;
	opt.sendslope = FUNC0(q->sendslope, BYTES_PER_KBIT);
	opt.idleslope = FUNC0(q->idleslope, BYTES_PER_KBIT);
	opt.offload = q->offload;

	if (FUNC4(skb, TCA_CBS_PARMS, sizeof(opt), &opt))
		goto nla_put_failure;

	return FUNC2(skb, nest);

nla_put_failure:
	FUNC1(skb, nest);
	return -1;
}
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
struct tc_prio_qopt {int /*<<< orphan*/  priomap; int /*<<< orphan*/  bands; } ;
struct sk_buff {int len; } ;
struct prio_sched_data {int /*<<< orphan*/  prio2band; int /*<<< orphan*/  bands; } ;
struct Qdisc {int dummy; } ;
typedef  int /*<<< orphan*/  opt ;

/* Variables and functions */
 int /*<<< orphan*/  TCA_OPTIONS ; 
 scalar_t__ TC_PRIO_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int,struct tc_prio_qopt*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,unsigned char*) ; 
 int FUNC3 (struct Qdisc*) ; 
 struct prio_sched_data* FUNC4 (struct Qdisc*) ; 
 unsigned char* FUNC5 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC6(struct Qdisc *sch, struct sk_buff *skb)
{
	struct prio_sched_data *q = FUNC4(sch);
	unsigned char *b = FUNC5(skb);
	struct tc_prio_qopt opt;
	int err;

	opt.bands = q->bands;
	FUNC0(&opt.priomap, q->prio2band, TC_PRIO_MAX + 1);

	err = FUNC3(sch);
	if (err)
		goto nla_put_failure;

	if (FUNC1(skb, TCA_OPTIONS, sizeof(opt), &opt))
		goto nla_put_failure;

	return skb->len;

nla_put_failure:
	FUNC2(skb, b);
	return -1;
}
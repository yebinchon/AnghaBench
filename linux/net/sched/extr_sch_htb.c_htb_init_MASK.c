#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tc_htb_glob {scalar_t__ version; int rate2quantum; int /*<<< orphan*/  defcls; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct htb_sched {int rate2quantum; int /*<<< orphan*/  defcls; int /*<<< orphan*/  direct_qlen; int /*<<< orphan*/  direct_queue; int /*<<< orphan*/  clhash; int /*<<< orphan*/  filter_list; int /*<<< orphan*/  block; int /*<<< orphan*/  work; int /*<<< orphan*/  watchdog; } ;
struct Qdisc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_queue_len; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ HTB_VER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t TCA_HTB_DIRECT_QLEN ; 
 size_t TCA_HTB_INIT ; 
 int /*<<< orphan*/  TCA_HTB_MAX ; 
 int /*<<< orphan*/  htb_policy ; 
 int /*<<< orphan*/  htb_work_func ; 
 struct tc_htb_glob* FUNC1 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC2 (struct nlattr*) ; 
 int FUNC3 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (struct Qdisc*) ; 
 struct htb_sched* FUNC6 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct Qdisc*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct Qdisc*,struct netlink_ext_ack*) ; 

__attribute__((used)) static int FUNC10(struct Qdisc *sch, struct nlattr *opt,
		    struct netlink_ext_ack *extack)
{
	struct htb_sched *q = FUNC6(sch);
	struct nlattr *tb[TCA_HTB_MAX + 1];
	struct tc_htb_glob *gopt;
	int err;

	FUNC8(&q->watchdog, sch);
	FUNC0(&q->work, htb_work_func);

	if (!opt)
		return -EINVAL;

	err = FUNC9(&q->block, &q->filter_list, sch, extack);
	if (err)
		return err;

	err = FUNC3(tb, TCA_HTB_MAX, opt, htb_policy,
					  NULL);
	if (err < 0)
		return err;

	if (!tb[TCA_HTB_INIT])
		return -EINVAL;

	gopt = FUNC1(tb[TCA_HTB_INIT]);
	if (gopt->version != HTB_VER >> 16)
		return -EINVAL;

	err = FUNC4(&q->clhash);
	if (err < 0)
		return err;

	FUNC7(&q->direct_queue);

	if (tb[TCA_HTB_DIRECT_QLEN])
		q->direct_qlen = FUNC2(tb[TCA_HTB_DIRECT_QLEN]);
	else
		q->direct_qlen = FUNC5(sch)->tx_queue_len;

	if ((q->rate2quantum = gopt->rate2quantum) < 1)
		q->rate2quantum = 1;
	q->defcls = gopt->defcls;

	return 0;
}
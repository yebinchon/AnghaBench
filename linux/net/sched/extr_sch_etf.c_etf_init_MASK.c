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
struct tc_etf_qopt {int clockid; int /*<<< orphan*/  delta; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct etf_sched_data {int clockid; int /*<<< orphan*/  watchdog; int /*<<< orphan*/  get_time; int /*<<< orphan*/  skip_sock_check; scalar_t__ deadline_mode; scalar_t__ offload; int /*<<< orphan*/  delta; scalar_t__ queue; } ;
struct Qdisc {scalar_t__ dev_queue; } ;

/* Variables and functions */
#define  CLOCK_BOOTTIME 131 
#define  CLOCK_MONOTONIC 130 
#define  CLOCK_REALTIME 129 
#define  CLOCK_TAI 128 
 scalar_t__ FUNC0 (struct tc_etf_qopt*) ; 
 int EINVAL ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  FUNC1 (struct netlink_ext_ack*,char*) ; 
 scalar_t__ FUNC2 (struct tc_etf_qopt*) ; 
 int /*<<< orphan*/  FUNC3 (struct tc_etf_qopt*) ; 
 int /*<<< orphan*/  TCA_ETF_MAX ; 
 size_t TCA_ETF_PARMS ; 
 int FUNC4 (struct net_device*,struct etf_sched_data*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  etf_policy ; 
 int /*<<< orphan*/  ktime_get ; 
 int /*<<< orphan*/  ktime_get_boottime ; 
 int /*<<< orphan*/  ktime_get_clocktai ; 
 int /*<<< orphan*/  ktime_get_real ; 
 scalar_t__ FUNC5 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct tc_etf_qopt* FUNC6 (struct nlattr*) ; 
 int FUNC7 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int,char*,char*) ; 
 struct net_device* FUNC9 (struct Qdisc*) ; 
 struct etf_sched_data* FUNC10 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct Qdisc*,int) ; 
 int FUNC12 (struct tc_etf_qopt*,struct netlink_ext_ack*) ; 

__attribute__((used)) static int FUNC13(struct Qdisc *sch, struct nlattr *opt,
		    struct netlink_ext_ack *extack)
{
	struct etf_sched_data *q = FUNC10(sch);
	struct net_device *dev = FUNC9(sch);
	struct nlattr *tb[TCA_ETF_MAX + 1];
	struct tc_etf_qopt *qopt;
	int err;

	if (!opt) {
		FUNC1(extack,
			       "Missing ETF qdisc options which are mandatory");
		return -EINVAL;
	}

	err = FUNC7(tb, TCA_ETF_MAX, opt, etf_policy,
					  extack);
	if (err < 0)
		return err;

	if (!tb[TCA_ETF_PARMS]) {
		FUNC1(extack, "Missing mandatory ETF parameters");
		return -EINVAL;
	}

	qopt = FUNC6(tb[TCA_ETF_PARMS]);

	FUNC8("delta %d clockid %d offload %s deadline %s\n",
		 qopt->delta, qopt->clockid,
		 FUNC2(qopt) ? "on" : "off",
		 FUNC0(qopt) ? "on" : "off");

	err = FUNC12(qopt, extack);
	if (err < 0)
		return err;

	q->queue = sch->dev_queue - FUNC5(dev, 0);

	if (FUNC2(qopt)) {
		err = FUNC4(dev, q, extack);
		if (err < 0)
			return err;
	}

	/* Everything went OK, save the parameters used. */
	q->delta = qopt->delta;
	q->clockid = qopt->clockid;
	q->offload = FUNC2(qopt);
	q->deadline_mode = FUNC0(qopt);
	q->skip_sock_check = FUNC3(qopt);

	switch (q->clockid) {
	case CLOCK_REALTIME:
		q->get_time = ktime_get_real;
		break;
	case CLOCK_MONOTONIC:
		q->get_time = ktime_get;
		break;
	case CLOCK_BOOTTIME:
		q->get_time = ktime_get_boottime;
		break;
	case CLOCK_TAI:
		q->get_time = ktime_get_clocktai;
		break;
	default:
		FUNC1(extack, "Clockid is not supported");
		return -ENOTSUPP;
	}

	FUNC11(&q->watchdog, sch, q->clockid);

	return 0;
}
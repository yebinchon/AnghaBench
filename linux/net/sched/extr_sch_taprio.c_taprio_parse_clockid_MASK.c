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
struct taprio_sched {int clockid; int /*<<< orphan*/  tk_offset; int /*<<< orphan*/  flags; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {struct ethtool_ops* ethtool_ops; } ;
struct ethtool_ts_info {int phc_index; int /*<<< orphan*/  cmd; } ;
struct ethtool_ops {int (* get_ts_info ) (struct net_device*,struct ethtool_ts_info*) ;} ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
#define  CLOCK_BOOTTIME 131 
#define  CLOCK_MONOTONIC 130 
#define  CLOCK_REALTIME 129 
#define  CLOCK_TAI 128 
 int EINVAL ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  ETHTOOL_GET_TS_INFO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct netlink_ext_ack*,char*) ; 
 size_t TCA_TAPRIO_ATTR_SCHED_CLOCKID ; 
 int /*<<< orphan*/  TK_OFFS_BOOT ; 
 int /*<<< orphan*/  TK_OFFS_MAX ; 
 int /*<<< orphan*/  TK_OFFS_REAL ; 
 int /*<<< orphan*/  TK_OFFS_TAI ; 
 int FUNC2 (struct nlattr*) ; 
 struct net_device* FUNC3 (struct Qdisc*) ; 
 struct taprio_sched* FUNC4 (struct Qdisc*) ; 
 int FUNC5 (struct net_device*,struct ethtool_ts_info*) ; 

__attribute__((used)) static int FUNC6(struct Qdisc *sch, struct nlattr **tb,
				struct netlink_ext_ack *extack)
{
	struct taprio_sched *q = FUNC4(sch);
	struct net_device *dev = FUNC3(sch);
	int err = -EINVAL;

	if (FUNC0(q->flags)) {
		const struct ethtool_ops *ops = dev->ethtool_ops;
		struct ethtool_ts_info info = {
			.cmd = ETHTOOL_GET_TS_INFO,
			.phc_index = -1,
		};

		if (tb[TCA_TAPRIO_ATTR_SCHED_CLOCKID]) {
			FUNC1(extack,
				       "The 'clockid' cannot be specified for full offload");
			goto out;
		}

		if (ops && ops->get_ts_info)
			err = ops->get_ts_info(dev, &info);

		if (err || info.phc_index < 0) {
			FUNC1(extack,
				       "Device does not have a PTP clock");
			err = -ENOTSUPP;
			goto out;
		}
	} else if (tb[TCA_TAPRIO_ATTR_SCHED_CLOCKID]) {
		int clockid = FUNC2(tb[TCA_TAPRIO_ATTR_SCHED_CLOCKID]);

		/* We only support static clockids and we don't allow
		 * for it to be modified after the first init.
		 */
		if (clockid < 0 ||
		    (q->clockid != -1 && q->clockid != clockid)) {
			FUNC1(extack,
				       "Changing the 'clockid' of a running schedule is not supported");
			err = -ENOTSUPP;
			goto out;
		}

		switch (clockid) {
		case CLOCK_REALTIME:
			q->tk_offset = TK_OFFS_REAL;
			break;
		case CLOCK_MONOTONIC:
			q->tk_offset = TK_OFFS_MAX;
			break;
		case CLOCK_BOOTTIME:
			q->tk_offset = TK_OFFS_BOOT;
			break;
		case CLOCK_TAI:
			q->tk_offset = TK_OFFS_TAI;
			break;
		default:
			FUNC1(extack, "Invalid 'clockid'");
			err = -EINVAL;
			goto out;
		}

		q->clockid = clockid;
	} else {
		FUNC1(extack, "Specifying a 'clockid' is mandatory");
		goto out;
	}

	/* Everything went ok, return success. */
	err = 0;

out:
	return err;
}
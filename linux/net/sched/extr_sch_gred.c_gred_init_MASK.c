#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct Qdisc {int limit; } ;
struct TYPE_3__ {int tx_queue_len; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 size_t TCA_GRED_DPS ; 
 size_t TCA_GRED_LIMIT ; 
 int /*<<< orphan*/  TCA_GRED_MAX ; 
 size_t TCA_GRED_PARMS ; 
 size_t TCA_GRED_STAB ; 
 int FUNC1 (struct Qdisc*,struct nlattr*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  gred_policy ; 
 int FUNC2 (struct nlattr*) ; 
 int FUNC3 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 int FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (struct Qdisc*) ; 

__attribute__((used)) static int FUNC6(struct Qdisc *sch, struct nlattr *opt,
		     struct netlink_ext_ack *extack)
{
	struct nlattr *tb[TCA_GRED_MAX + 1];
	int err;

	if (!opt)
		return -EINVAL;

	err = FUNC3(tb, TCA_GRED_MAX, opt, gred_policy,
					  extack);
	if (err < 0)
		return err;

	if (tb[TCA_GRED_PARMS] || tb[TCA_GRED_STAB]) {
		FUNC0(extack,
				   "virtual queue configuration can't be specified at initialization time");
		return -EINVAL;
	}

	if (tb[TCA_GRED_LIMIT])
		sch->limit = FUNC2(tb[TCA_GRED_LIMIT]);
	else
		sch->limit = FUNC5(sch)->tx_queue_len
		             * FUNC4(FUNC5(sch));

	return FUNC1(sch, tb[TCA_GRED_DPS], extack);
}
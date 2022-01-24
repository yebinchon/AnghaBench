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
struct tc_cbq_wrropt {scalar_t__ priority; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int /*<<< orphan*/  TCA_CBQ_MAX ; 
 size_t TCA_CBQ_WRROPT ; 
 scalar_t__ TC_CBQ_MAXPRIO ; 
 int /*<<< orphan*/  cbq_policy ; 
 struct tc_cbq_wrropt* FUNC1 (struct nlattr*) ; 
 int FUNC2 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 

__attribute__((used)) static int FUNC3(struct nlattr *tb[TCA_CBQ_MAX + 1],
			 struct nlattr *opt,
			 struct netlink_ext_ack *extack)
{
	int err;

	if (!opt) {
		FUNC0(extack, "CBQ options are required for this operation");
		return -EINVAL;
	}

	err = FUNC2(tb, TCA_CBQ_MAX, opt,
					  cbq_policy, extack);
	if (err < 0)
		return err;

	if (tb[TCA_CBQ_WRROPT]) {
		const struct tc_cbq_wrropt *wrr = FUNC1(tb[TCA_CBQ_WRROPT]);

		if (wrr->priority > TC_CBQ_MAXPRIO) {
			FUNC0(extack, "priority is bigger than TC_CBQ_MAXPRIO");
			err = -EINVAL;
		}
	}
	return err;
}
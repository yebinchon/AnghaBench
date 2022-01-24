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
struct sw_flow_actions {int /*<<< orphan*/  actions_len; int /*<<< orphan*/  actions; } ;
struct sw_flow {int /*<<< orphan*/  sf_acts; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  OVS_FLOW_ATTR_ACTIONS ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*) ; 
 struct sw_flow_actions* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(const struct sw_flow *flow,
				     struct sk_buff *skb, int skb_orig_len)
{
	struct nlattr *start;
	int err;

	/* If OVS_FLOW_ATTR_ACTIONS doesn't fit, skip dumping the actions if
	 * this is the first flow to be dumped into 'skb'.  This is unusual for
	 * Netlink but individual action lists can be longer than
	 * NLMSG_GOODSIZE and thus entirely undumpable if we didn't do this.
	 * The userspace caller can always fetch the actions separately if it
	 * really wants them.  (Most userspace callers in fact don't care.)
	 *
	 * This can only fail for dump operations because the skb is always
	 * properly sized for single flows.
	 */
	start = FUNC2(skb, OVS_FLOW_ATTR_ACTIONS);
	if (start) {
		const struct sw_flow_actions *sf_acts;

		sf_acts = FUNC4(flow->sf_acts);
		err = FUNC3(sf_acts->actions,
					  sf_acts->actions_len, skb);

		if (!err)
			FUNC1(skb, start);
		else {
			if (skb_orig_len)
				return err;

			FUNC0(skb, start);
		}
	} else if (skb_orig_len) {
		return -EMSGSIZE;
	}

	return 0;
}
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
struct sw_flow_key {int dummy; } ;
struct sk_buff {scalar_t__ len; } ;
struct nlattr {int dummy; } ;
struct datapath {int dummy; } ;
struct check_pkt_len_arg {scalar_t__ pkt_len; int /*<<< orphan*/  exec_for_greater; int /*<<< orphan*/  exec_for_lesser_equal; } ;

/* Variables and functions */
 int FUNC0 (struct datapath*,struct sk_buff*,struct sw_flow_key*,int /*<<< orphan*/ ,void*,int,int,int) ; 
 void* FUNC1 (struct nlattr const*) ; 
 int FUNC2 (struct nlattr const*) ; 
 struct nlattr* FUNC3 (struct nlattr const*,int*) ; 

__attribute__((used)) static int FUNC4(struct datapath *dp, struct sk_buff *skb,
				 struct sw_flow_key *key,
				 const struct nlattr *attr, bool last)
{
	const struct nlattr *actions, *cpl_arg;
	const struct check_pkt_len_arg *arg;
	int rem = FUNC2(attr);
	bool clone_flow_key;

	/* The first netlink attribute in 'attr' is always
	 * 'OVS_CHECK_PKT_LEN_ATTR_ARG'.
	 */
	cpl_arg = FUNC1(attr);
	arg = FUNC1(cpl_arg);

	if (skb->len <= arg->pkt_len) {
		/* Second netlink attribute in 'attr' is always
		 * 'OVS_CHECK_PKT_LEN_ATTR_ACTIONS_IF_LESS_EQUAL'.
		 */
		actions = FUNC3(cpl_arg, &rem);
		clone_flow_key = !arg->exec_for_lesser_equal;
	} else {
		/* Third netlink attribute in 'attr' is always
		 * 'OVS_CHECK_PKT_LEN_ATTR_ACTIONS_IF_GREATER'.
		 */
		actions = FUNC3(cpl_arg, &rem);
		actions = FUNC3(actions, &rem);
		clone_flow_key = !arg->exec_for_greater;
	}

	return FUNC0(dp, skb, key, 0, FUNC1(actions),
			     FUNC2(actions), last, clone_flow_key);
}
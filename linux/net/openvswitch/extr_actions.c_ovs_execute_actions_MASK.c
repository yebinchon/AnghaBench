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
struct sw_flow_key {int dummy; } ;
struct sw_flow_actions {int /*<<< orphan*/  actions_len; int /*<<< orphan*/  actions; int /*<<< orphan*/  orig_len; } ;
struct sk_buff {int dummy; } ;
struct datapath {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  acts_origlen; } ;

/* Variables and functions */
 int ENETDOWN ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int OVS_RECURSION_LIMIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct datapath*,struct sk_buff*,struct sw_flow_key*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  exec_actions_level ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct datapath*) ; 
 int /*<<< orphan*/  FUNC7 (struct datapath*) ; 
 scalar_t__ FUNC8 (int) ; 

int FUNC9(struct datapath *dp, struct sk_buff *skb,
			const struct sw_flow_actions *acts,
			struct sw_flow_key *key)
{
	int err, level;

	level = FUNC2(exec_actions_level);
	if (FUNC8(level > OVS_RECURSION_LIMIT)) {
		FUNC5("ovs: recursion limit reached on datapath %s, probable configuration error\n",
				     FUNC6(dp));
		FUNC4(skb);
		err = -ENETDOWN;
		goto out;
	}

	FUNC0(skb)->acts_origlen = acts->orig_len;
	err = FUNC3(dp, skb, key,
				 acts->actions, acts->actions_len);

	if (level == 1)
		FUNC7(dp);

out:
	FUNC1(exec_actions_level);
	return err;
}
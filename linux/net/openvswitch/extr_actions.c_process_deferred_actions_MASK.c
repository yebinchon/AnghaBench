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
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct deferred_action {int actions_len; struct nlattr* actions; struct sw_flow_key pkt_key; struct sk_buff* skb; } ;
struct datapath {int dummy; } ;
struct action_fifo {int dummy; } ;

/* Variables and functions */
 struct deferred_action* FUNC0 (struct action_fifo*) ; 
 int /*<<< orphan*/  FUNC1 (struct action_fifo*) ; 
 scalar_t__ FUNC2 (struct action_fifo*) ; 
 int /*<<< orphan*/  action_fifos ; 
 int /*<<< orphan*/  FUNC3 (struct datapath*,struct sk_buff*,struct sw_flow_key*,struct nlattr const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct sw_flow_key*) ; 
 struct action_fifo* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct datapath *dp)
{
	struct action_fifo *fifo = FUNC5(action_fifos);

	/* Do not touch the FIFO in case there is no deferred actions. */
	if (FUNC2(fifo))
		return;

	/* Finishing executing all deferred actions. */
	do {
		struct deferred_action *da = FUNC0(fifo);
		struct sk_buff *skb = da->skb;
		struct sw_flow_key *key = &da->pkt_key;
		const struct nlattr *actions = da->actions;
		int actions_len = da->actions_len;

		if (actions)
			FUNC3(dp, skb, key, actions, actions_len);
		else
			FUNC4(skb, key);
	} while (!FUNC2(fifo));

	/* Reset FIFO for the next packet.  */
	FUNC1(fifo);
}
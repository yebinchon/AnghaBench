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
typedef  void* u32 ;
struct sw_flow_key {void* recirc_id; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct deferred_action {struct sw_flow_key pkt_key; } ;
struct datapath {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct deferred_action* FUNC2 (struct sk_buff*,struct sw_flow_key*,struct nlattr const*,int) ; 
 struct sw_flow_key* FUNC3 (struct sw_flow_key*) ; 
 int FUNC4 (struct datapath*,struct sk_buff*,struct sw_flow_key*,struct nlattr const*,int) ; 
 int /*<<< orphan*/  exec_actions_level ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct datapath*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,struct sw_flow_key*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC10 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct datapath *dp, struct sk_buff *skb,
			 struct sw_flow_key *key, u32 recirc_id,
			 const struct nlattr *actions, int len,
			 bool last, bool clone_flow_key)
{
	struct deferred_action *da;
	struct sw_flow_key *clone;

	skb = last ? skb : FUNC10(skb, GFP_ATOMIC);
	if (!skb) {
		/* Out of memory, skip this action.
		 */
		return 0;
	}

	/* When clone_flow_key is false, the 'key' will not be change
	 * by the actions, then the 'key' can be used directly.
	 * Otherwise, try to clone key from the next recursion level of
	 * 'flow_keys'. If clone is successful, execute the actions
	 * without deferring.
	 */
	clone = clone_flow_key ? FUNC3(key) : key;
	if (clone) {
		int err = 0;

		if (actions) { /* Sample action */
			if (clone_flow_key)
				FUNC1(exec_actions_level);

			err = FUNC4(dp, skb, clone,
						 actions, len);

			if (clone_flow_key)
				FUNC0(exec_actions_level);
		} else { /* Recirc action */
			clone->recirc_id = recirc_id;
			FUNC8(skb, clone);
		}
		return err;
	}

	/* Out of 'flow_keys' space. Defer actions */
	da = FUNC2(skb, key, actions, len);
	if (da) {
		if (!actions) { /* Recirc action */
			key = &da->pkt_key;
			key->recirc_id = recirc_id;
		}
	} else {
		/* Out of per CPU action FIFO space. Drop the 'skb' and
		 * log an error.
		 */
		FUNC5(skb);

		if (FUNC6()) {
			if (actions) { /* Sample action */
				FUNC9("%s: deferred action limit reached, drop sample action\n",
					FUNC7(dp));
			} else {  /* Recirc action */
				FUNC9("%s: deferred action limit reached, drop recirc action\n",
					FUNC7(dp));
			}
		}
	}
	return 0;
}
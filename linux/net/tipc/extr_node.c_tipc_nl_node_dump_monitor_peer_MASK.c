#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void* u32 ;
struct tipc_nl_msg {int /*<<< orphan*/  seq; int /*<<< orphan*/  portid; struct sk_buff* skb; } ;
struct sk_buff {int len; int /*<<< orphan*/  sk; } ;
struct nlattr {int dummy; } ;
struct netlink_callback {int* args; TYPE_1__* nlh; int /*<<< orphan*/  skb; } ;
struct net {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  portid; } ;
struct TYPE_3__ {int /*<<< orphan*/  nlmsg_seq; } ;

/* Variables and functions */
 int EINVAL ; 
 void* MAX_BEARERS ; 
 TYPE_2__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t TIPC_NLA_MON ; 
 int /*<<< orphan*/  TIPC_NLA_MON_MAX ; 
 size_t TIPC_NLA_MON_REF ; 
 void* FUNC1 (struct nlattr*) ; 
 int FUNC2 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct net* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct net*,struct tipc_nl_msg*,void*,void**) ; 
 int /*<<< orphan*/  tipc_nl_monitor_policy ; 
 int FUNC7 (TYPE_1__*,struct nlattr***) ; 

int FUNC8(struct sk_buff *skb,
				   struct netlink_callback *cb)
{
	struct net *net = FUNC5(skb->sk);
	u32 prev_node = cb->args[1];
	u32 bearer_id = cb->args[2];
	int done = cb->args[0];
	struct tipc_nl_msg msg;
	int err;

	if (!prev_node) {
		struct nlattr **attrs;
		struct nlattr *mon[TIPC_NLA_MON_MAX + 1];

		err = FUNC7(cb->nlh, &attrs);
		if (err)
			return err;

		if (!attrs[TIPC_NLA_MON])
			return -EINVAL;

		err = FUNC2(mon, TIPC_NLA_MON_MAX,
						  attrs[TIPC_NLA_MON],
						  tipc_nl_monitor_policy,
						  NULL);
		if (err)
			return err;

		if (!mon[TIPC_NLA_MON_REF])
			return -EINVAL;

		bearer_id = FUNC1(mon[TIPC_NLA_MON_REF]);

		if (bearer_id >= MAX_BEARERS)
			return -EINVAL;
	}

	if (done)
		return 0;

	msg.skb = skb;
	msg.portid = FUNC0(cb->skb).portid;
	msg.seq = cb->nlh->nlmsg_seq;

	FUNC3();
	err = FUNC6(net, &msg, bearer_id, &prev_node);
	if (!err)
		done = 1;

	FUNC4();
	cb->args[0] = done;
	cb->args[1] = prev_node;
	cb->args[2] = bearer_id;

	return skb->len;
}
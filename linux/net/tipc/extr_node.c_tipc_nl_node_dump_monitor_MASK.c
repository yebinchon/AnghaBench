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
typedef  int u32 ;
struct tipc_nl_msg {int /*<<< orphan*/  seq; int /*<<< orphan*/  portid; struct sk_buff* skb; } ;
struct sk_buff {int len; int /*<<< orphan*/  sk; } ;
struct netlink_callback {int* args; TYPE_1__* nlh; int /*<<< orphan*/  skb; } ;
struct net {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  portid; } ;
struct TYPE_3__ {int /*<<< orphan*/  nlmsg_seq; } ;

/* Variables and functions */
 int MAX_BEARERS ; 
 TYPE_2__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct net*,struct tipc_nl_msg*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct net* FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct sk_buff *skb, struct netlink_callback *cb)
{
	struct net *net = FUNC4(skb->sk);
	u32 prev_bearer = cb->args[0];
	struct tipc_nl_msg msg;
	int bearer_id;
	int err;

	if (prev_bearer == MAX_BEARERS)
		return 0;

	msg.skb = skb;
	msg.portid = FUNC0(cb->skb).portid;
	msg.seq = cb->nlh->nlmsg_seq;

	FUNC2();
	for (bearer_id = prev_bearer; bearer_id < MAX_BEARERS; bearer_id++) {
		err = FUNC1(net, &msg, bearer_id);
		if (err)
			break;
	}
	FUNC3();
	cb->args[0] = bearer_id;

	return skb->len;
}
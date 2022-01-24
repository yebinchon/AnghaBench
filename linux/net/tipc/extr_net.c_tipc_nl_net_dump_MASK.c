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
struct tipc_nl_msg {int /*<<< orphan*/  seq; int /*<<< orphan*/  portid; struct sk_buff* skb; } ;
struct sk_buff {int len; int /*<<< orphan*/  sk; } ;
struct netlink_callback {int* args; TYPE_1__* nlh; int /*<<< orphan*/  skb; } ;
struct net {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  portid; } ;
struct TYPE_3__ {int /*<<< orphan*/  nlmsg_seq; } ;

/* Variables and functions */
 TYPE_2__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct net*,struct tipc_nl_msg*) ; 
 struct net* FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct sk_buff *skb, struct netlink_callback *cb)
{
	struct net *net = FUNC2(skb->sk);
	int err;
	int done = cb->args[0];
	struct tipc_nl_msg msg;

	if (done)
		return 0;

	msg.skb = skb;
	msg.portid = FUNC0(cb->skb).portid;
	msg.seq = cb->nlh->nlmsg_seq;

	err = FUNC1(net, &msg);
	if (err)
		goto out;

	done = 1;
out:
	cb->args[0] = done;

	return skb->len;
}
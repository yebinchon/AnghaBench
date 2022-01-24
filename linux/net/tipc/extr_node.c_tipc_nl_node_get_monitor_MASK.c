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
struct tipc_nl_msg {int /*<<< orphan*/  skb; int /*<<< orphan*/  seq; int /*<<< orphan*/  portid; } ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct net {int dummy; } ;
struct genl_info {int /*<<< orphan*/  snd_seq; int /*<<< orphan*/  snd_portid; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NLMSG_GOODSIZE ; 
 int FUNC0 (struct net*,struct tipc_nl_msg*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct genl_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net* FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct sk_buff *skb, struct genl_info *info)
{
	struct net *net = FUNC4(skb->sk);
	struct tipc_nl_msg msg;
	int err;

	msg.skb = FUNC3(NLMSG_GOODSIZE, GFP_KERNEL);
	if (!msg.skb)
		return -ENOMEM;
	msg.portid = info->snd_portid;
	msg.seq = info->snd_seq;

	err = FUNC0(net, &msg);
	if (err) {
		FUNC2(msg.skb);
		return err;
	}

	return FUNC1(msg.skb, info);
}
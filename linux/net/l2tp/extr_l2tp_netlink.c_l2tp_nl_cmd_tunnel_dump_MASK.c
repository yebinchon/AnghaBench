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
struct sk_buff {int len; int /*<<< orphan*/  sk; } ;
struct netlink_callback {int* args; TYPE_1__* nlh; int /*<<< orphan*/  skb; } ;
struct net {int dummy; } ;
struct l2tp_tunnel {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  portid; } ;
struct TYPE_3__ {int /*<<< orphan*/  nlmsg_seq; } ;

/* Variables and functions */
 int /*<<< orphan*/  L2TP_CMD_TUNNEL_GET ; 
 TYPE_2__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NLM_F_MULTI ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct l2tp_tunnel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct l2tp_tunnel*) ; 
 struct l2tp_tunnel* FUNC3 (struct net*,int) ; 
 struct net* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb, struct netlink_callback *cb)
{
	int ti = cb->args[0];
	struct l2tp_tunnel *tunnel;
	struct net *net = FUNC4(skb->sk);

	for (;;) {
		tunnel = FUNC3(net, ti);
		if (tunnel == NULL)
			goto out;

		if (FUNC1(skb, FUNC0(cb->skb).portid,
					cb->nlh->nlmsg_seq, NLM_F_MULTI,
					tunnel, L2TP_CMD_TUNNEL_GET) < 0) {
			FUNC2(tunnel);
			goto out;
		}
		FUNC2(tunnel);

		ti++;
	}

out:
	cb->args[0] = ti;

	return skb->len;
}
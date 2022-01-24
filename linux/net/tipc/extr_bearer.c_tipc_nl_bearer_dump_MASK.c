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
struct tipc_net {int /*<<< orphan*/ * bearer_list; } ;
struct tipc_bearer {int dummy; } ;
struct sk_buff {int len; int /*<<< orphan*/  sk; } ;
struct netlink_callback {int* args; TYPE_1__* nlh; int /*<<< orphan*/  skb; } ;
struct net {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  portid; } ;
struct TYPE_3__ {int /*<<< orphan*/  nlmsg_seq; } ;

/* Variables and functions */
 int MAX_BEARERS ; 
 TYPE_2__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NLM_F_MULTI ; 
 int FUNC1 (struct tipc_nl_msg*,struct tipc_bearer*,int /*<<< orphan*/ ) ; 
 struct tipc_net* FUNC2 (struct net*,int /*<<< orphan*/ ) ; 
 struct tipc_bearer* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 struct net* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tipc_net_id ; 

int FUNC7(struct sk_buff *skb, struct netlink_callback *cb)
{
	int err;
	int i = cb->args[0];
	struct tipc_bearer *bearer;
	struct tipc_nl_msg msg;
	struct net *net = FUNC6(skb->sk);
	struct tipc_net *tn = FUNC2(net, tipc_net_id);

	if (i == MAX_BEARERS)
		return 0;

	msg.skb = skb;
	msg.portid = FUNC0(cb->skb).portid;
	msg.seq = cb->nlh->nlmsg_seq;

	FUNC4();
	for (i = 0; i < MAX_BEARERS; i++) {
		bearer = FUNC3(tn->bearer_list[i]);
		if (!bearer)
			continue;

		err = FUNC1(&msg, bearer, NLM_F_MULTI);
		if (err)
			break;
	}
	FUNC5();

	cb->args[0] = i;
	return skb->len;
}
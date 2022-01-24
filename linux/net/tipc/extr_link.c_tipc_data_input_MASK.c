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
struct tipc_msg {int dummy; } ;
struct tipc_link {struct sk_buff_head* namedq; TYPE_1__* bc_rcvlink; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  state; struct sk_buff_head* inputq; } ;

/* Variables and functions */
#define  BCAST_PROTOCOL 138 
#define  CONN_MANAGER 137 
#define  GROUP_PROTOCOL 136 
 int /*<<< orphan*/  LINK_ESTABLISHED ; 
#define  MSG_BUNDLER 135 
#define  MSG_FRAGMENTER 134 
#define  NAME_DISTRIBUTOR 133 
#define  TIPC_CRITICAL_IMPORTANCE 132 
#define  TIPC_HIGH_IMPORTANCE 131 
#define  TIPC_LOW_IMPORTANCE 130 
#define  TIPC_MEDIUM_IMPORTANCE 129 
#define  TUNNEL_PROTOCOL 128 
 struct tipc_msg* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC3 (struct tipc_msg*) ; 
 int FUNC4 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff_head*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static bool FUNC8(struct tipc_link *l, struct sk_buff *skb,
			    struct sk_buff_head *inputq)
{
	struct sk_buff_head *mc_inputq = l->bc_rcvlink->inputq;
	struct tipc_msg *hdr = FUNC0(skb);

	switch (FUNC4(hdr)) {
	case TIPC_LOW_IMPORTANCE:
	case TIPC_MEDIUM_IMPORTANCE:
	case TIPC_HIGH_IMPORTANCE:
	case TIPC_CRITICAL_IMPORTANCE:
		if (FUNC7(FUNC2(hdr) || FUNC3(hdr))) {
			FUNC6(mc_inputq, skb);
			return true;
		}
		/* fall through */
	case CONN_MANAGER:
		FUNC6(inputq, skb);
		return true;
	case GROUP_PROTOCOL:
		FUNC6(mc_inputq, skb);
		return true;
	case NAME_DISTRIBUTOR:
		l->bc_rcvlink->state = LINK_ESTABLISHED;
		FUNC6(l->namedq, skb);
		return true;
	case MSG_BUNDLER:
	case TUNNEL_PROTOCOL:
	case MSG_FRAGMENTER:
	case BCAST_PROTOCOL:
		return false;
	default:
		FUNC5("Dropping received illegal msg type\n");
		FUNC1(skb);
		return true;
	};
}
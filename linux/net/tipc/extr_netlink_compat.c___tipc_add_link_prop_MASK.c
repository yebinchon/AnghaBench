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
struct tipc_nl_compat_msg {int cmd; } ;
struct tipc_link_config {int /*<<< orphan*/  value; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  TIPC_CMD_SET_LINK_PRI 130 
#define  TIPC_CMD_SET_LINK_TOL 129 
#define  TIPC_CMD_SET_LINK_WINDOW 128 
 int /*<<< orphan*/  TIPC_NLA_PROP_PRIO ; 
 int /*<<< orphan*/  TIPC_NLA_PROP_TOL ; 
 int /*<<< orphan*/  TIPC_NLA_PROP_WIN ; 
 int FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct sk_buff *skb,
				struct tipc_nl_compat_msg *msg,
				struct tipc_link_config *lc)
{
	switch (msg->cmd) {
	case TIPC_CMD_SET_LINK_PRI:
		return FUNC0(skb, TIPC_NLA_PROP_PRIO, FUNC1(lc->value));
	case TIPC_CMD_SET_LINK_TOL:
		return FUNC0(skb, TIPC_NLA_PROP_TOL, FUNC1(lc->value));
	case TIPC_CMD_SET_LINK_WINDOW:
		return FUNC0(skb, TIPC_NLA_PROP_WIN, FUNC1(lc->value));
	}

	return -EINVAL;
}
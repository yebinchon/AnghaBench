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
typedef  int /*<<< orphan*/  u32 ;
struct tipc_nl_msg {int /*<<< orphan*/  skb; int /*<<< orphan*/  seq; int /*<<< orphan*/  portid; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  TIPC_NLA_MON ; 
 int /*<<< orphan*/  TIPC_NLA_MON_ACTIVATION_THRESHOLD ; 
 int /*<<< orphan*/  TIPC_NL_MON_GET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct nlattr*) ; 
 struct nlattr* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tipc_genl_family ; 
 int /*<<< orphan*/  FUNC7 (struct net*) ; 

__attribute__((used)) static int FUNC8(struct net *net, struct tipc_nl_msg *msg)
{
	struct nlattr *attrs;
	void *hdr;
	u32 val;

	hdr = FUNC2(msg->skb, msg->portid, msg->seq, &tipc_genl_family,
			  0, TIPC_NL_MON_GET);
	if (!hdr)
		return -EMSGSIZE;

	attrs = FUNC5(msg->skb, TIPC_NLA_MON);
	if (!attrs)
		goto msg_full;

	val = FUNC7(net);

	if (FUNC6(msg->skb, TIPC_NLA_MON_ACTIVATION_THRESHOLD, val))
		goto attr_msg_full;

	FUNC4(msg->skb, attrs);
	FUNC1(msg->skb, hdr);

	return 0;

attr_msg_full:
	FUNC3(msg->skb, attrs);
msg_full:
	FUNC0(msg->skb, hdr);

	return -EMSGSIZE;
}
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
typedef  scalar_t__ u32 ;
struct tipc_msg {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int TIPC_ERR_NO_NAME ; 
 int TIPC_OK ; 
 struct tipc_msg* FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC2 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC3 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC4 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC5 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC6 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC7 (struct tipc_msg*) ; 
 scalar_t__ FUNC8 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC9 (struct tipc_msg*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct tipc_msg*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct tipc_msg*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 scalar_t__ FUNC13 (struct sk_buff*) ; 
 scalar_t__ FUNC14 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC15 (struct net*) ; 
 scalar_t__ FUNC16 (struct net*,int /*<<< orphan*/ ) ; 

bool FUNC17(struct net *net, struct sk_buff *skb, int *err)
{
	struct tipc_msg *msg = FUNC0(skb);
	u32 dport, dnode;
	u32 onode = FUNC15(net);

	if (!FUNC3(msg))
		return false;
	if (!FUNC5(msg))
		return false;
	if (FUNC1(msg))
		return false;
	*err = TIPC_ERR_NO_NAME;
	if (FUNC13(skb))
		return false;
	msg = FUNC0(skb);
	if (FUNC8(msg))
		return false;
	dnode = FUNC16(net, FUNC4(msg));
	dport = FUNC14(net, FUNC7(msg),
				       FUNC6(msg), &dnode);
	if (!dport)
		return false;
	FUNC2(msg);
	if (dnode != onode)
		FUNC11(msg, onode);
	FUNC9(msg, dnode);
	FUNC10(msg, dport);
	*err = TIPC_OK;

	if (!FUNC12(skb))
		return true;

	return true;
}
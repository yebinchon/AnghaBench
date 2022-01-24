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
typedef  int u32 ;
struct tipc_msg {int dummy; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 scalar_t__ BCAST_PROTOCOL ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int INT_H_SIZE ; 
 int /*<<< orphan*/  MSG_BUNDLER ; 
 scalar_t__ MSG_FRAGMENTER ; 
 scalar_t__ TUNNEL_PROTOCOL ; 
 struct tipc_msg* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC2 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC3 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC4 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC5 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC6 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct tipc_msg*) ; 
 scalar_t__ FUNC11 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int) ; 
 struct sk_buff* FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,struct tipc_msg*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct tipc_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

bool FUNC16(struct sk_buff **skb,  struct tipc_msg *msg,
			  u32 mtu, u32 dnode)
{
	struct sk_buff *_skb;
	struct tipc_msg *bmsg;
	u32 msz = FUNC10(msg);
	u32 max = mtu - INT_H_SIZE;

	if (FUNC11(msg) == MSG_FRAGMENTER)
		return false;
	if (FUNC11(msg) == TUNNEL_PROTOCOL)
		return false;
	if (FUNC11(msg) == BCAST_PROTOCOL)
		return false;
	if (msz > (max / 2))
		return false;

	_skb = FUNC13(max, GFP_ATOMIC);
	if (!_skb)
		return false;

	FUNC12(_skb, INT_H_SIZE);
	bmsg = FUNC0(_skb);
	FUNC15(FUNC4(msg), bmsg, MSG_BUNDLER, 0,
		      INT_H_SIZE, dnode);
	FUNC8(bmsg, FUNC3(msg));
	FUNC9(bmsg, FUNC5(msg));
	FUNC6(bmsg, FUNC1(msg));
	FUNC7(bmsg, FUNC2(msg));
	FUNC14(_skb, msg, mtu);
	*skb = _skb;
	return true;
}
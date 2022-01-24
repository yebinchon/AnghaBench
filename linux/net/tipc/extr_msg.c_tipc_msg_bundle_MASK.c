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

/* Variables and functions */
 scalar_t__ BCAST_PROTOCOL ; 
 scalar_t__ INT_H_SIZE ; 
 scalar_t__ MSG_BUNDLER ; 
 scalar_t__ MSG_FRAGMENTER ; 
 scalar_t__ TIPC_SYSTEM_IMPORTANCE ; 
 scalar_t__ TUNNEL_PROTOCOL ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 struct tipc_msg* FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct tipc_msg*) ; 
 scalar_t__ FUNC4 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC5 (struct tipc_msg*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct tipc_msg*,scalar_t__) ; 
 unsigned int FUNC7 (struct tipc_msg*) ; 
 scalar_t__ FUNC8 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,scalar_t__,struct tipc_msg*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC11 (struct sk_buff*) ; 
 scalar_t__ FUNC12 (int) ; 

bool FUNC13(struct sk_buff *skb, struct tipc_msg *msg, u32 mtu)
{
	struct tipc_msg *bmsg;
	unsigned int bsz;
	unsigned int msz = FUNC7(msg);
	u32 start, pad;
	u32 max = mtu - INT_H_SIZE;

	if (FUNC2(FUNC8(msg) == MSG_FRAGMENTER))
		return false;
	if (!skb)
		return false;
	bmsg = FUNC1(skb);
	bsz = FUNC7(bmsg);
	start = FUNC0(bsz);
	pad = start - bsz;

	if (FUNC12(FUNC8(msg) == TUNNEL_PROTOCOL))
		return false;
	if (FUNC12(FUNC8(msg) == BCAST_PROTOCOL))
		return false;
	if (FUNC12(FUNC8(bmsg) != MSG_BUNDLER))
		return false;
	if (FUNC12(FUNC11(skb) < (pad + msz)))
		return false;
	if (FUNC12(max < (start + msz)))
		return false;
	if ((FUNC3(msg) < TIPC_SYSTEM_IMPORTANCE) &&
	    (FUNC3(bmsg) == TIPC_SYSTEM_IMPORTANCE))
		return false;

	FUNC10(skb, pad + msz);
	FUNC9(skb, start, msg, msz);
	FUNC6(bmsg, start + msz);
	FUNC5(bmsg, FUNC4(bmsg) + 1);
	return true;
}
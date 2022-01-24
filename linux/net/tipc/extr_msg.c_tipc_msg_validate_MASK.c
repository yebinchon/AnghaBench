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
struct sk_buff {int truesize; int len; } ;
struct TYPE_2__ {int validated; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUF_HEADROOM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int MAX_H_SIZE ; 
 int MIN_H_SIZE ; 
 int TIPC_MAX_USER_MSG_SIZE ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 scalar_t__ TIPC_VERSION ; 
 struct tipc_msg* FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int FUNC4 (struct tipc_msg*) ; 
 int FUNC5 (struct tipc_msg*) ; 
 scalar_t__ FUNC6 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 struct sk_buff* FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int) ; 

bool FUNC10(struct sk_buff **_skb)
{
	struct sk_buff *skb = *_skb;
	struct tipc_msg *hdr;
	int msz, hsz;

	/* Ensure that flow control ratio condition is satisfied */
	if (FUNC9(skb->truesize / FUNC2(skb) >= 4)) {
		skb = FUNC8(skb, BUF_HEADROOM, 0, GFP_ATOMIC);
		if (!skb)
			return false;
		FUNC3(*_skb);
		*_skb = skb;
	}

	if (FUNC9(FUNC0(skb)->validated))
		return true;
	if (FUNC9(!FUNC7(skb, MIN_H_SIZE)))
		return false;

	hsz = FUNC4(FUNC1(skb));
	if (FUNC9(hsz < MIN_H_SIZE) || (hsz > MAX_H_SIZE))
		return false;
	if (FUNC9(!FUNC7(skb, hsz)))
		return false;

	hdr = FUNC1(skb);
	if (FUNC9(FUNC6(hdr) != TIPC_VERSION))
		return false;

	msz = FUNC5(hdr);
	if (FUNC9(msz < hsz))
		return false;
	if (FUNC9((msz - hsz) > TIPC_MAX_USER_MSG_SIZE))
		return false;
	if (FUNC9(skb->len < msz))
		return false;

	FUNC0(skb)->validated = true;
	return true;
}
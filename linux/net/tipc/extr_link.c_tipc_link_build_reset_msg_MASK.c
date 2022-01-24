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
struct tipc_link {scalar_t__ state; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int ACTIVATE_MSG ; 
 scalar_t__ LINK_ESTABLISHING ; 
 scalar_t__ LINK_RESET ; 
 int RESET_MSG ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct sk_buff* FUNC2 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct tipc_link*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff_head*) ; 

void FUNC4(struct tipc_link *l, struct sk_buff_head *xmitq)
{
	int mtyp = RESET_MSG;
	struct sk_buff *skb;

	if (l->state == LINK_ESTABLISHING)
		mtyp = ACTIVATE_MSG;

	FUNC3(l, mtyp, 0, 0, 0, 0, 0, xmitq);

	/* Inform peer that this endpoint is going down if applicable */
	skb = FUNC2(xmitq);
	if (skb && (l->state == LINK_RESET))
		FUNC1(FUNC0(skb), 1);
}
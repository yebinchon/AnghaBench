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
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIPC_DUMP_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct sk_buff**,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC8(struct sock *sk, struct sk_buff *skb, int err)
{
	u32 selector;
	u32 dnode;
	u32 onode = FUNC6(FUNC3(sk));

	if (!FUNC4(onode, &skb, err))
		return;

	FUNC7(sk, skb, TIPC_DUMP_NONE, "@sk_respond!");
	dnode = FUNC1(FUNC0(skb));
	selector = FUNC2(FUNC0(skb));
	FUNC5(FUNC3(sk), skb, dnode, selector);
}
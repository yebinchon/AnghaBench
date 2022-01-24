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
struct sock {int sk_state; int /*<<< orphan*/  (* sk_data_ready ) (struct sock*) ;} ;
struct sk_buff {int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int const DCCP_RESPOND ; 
 int /*<<< orphan*/  FUNC0 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int FUNC3 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 

int FUNC7(struct sock *parent, struct sock *child,
		       struct sk_buff *skb)
{
	int ret = 0;
	const int state = child->sk_state;

	if (!FUNC4(child)) {
		ret = FUNC3(child, skb, FUNC2(skb),
					     skb->len);

		/* Wakeup parent, send SIGIO */
		if (state == DCCP_RESPOND && child->sk_state != state)
			parent->sk_data_ready(parent);
	} else {
		/* Alas, it is possible again, because we do lookup
		 * in main socket hash table and lock on listening
		 * socket does not protect us more.
		 */
		FUNC0(child, skb);
	}

	FUNC1(child);
	FUNC5(child);
	return ret;
}
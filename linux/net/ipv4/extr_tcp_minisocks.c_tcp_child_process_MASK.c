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
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int TCP_SYN_RECV ; 
 int /*<<< orphan*/  FUNC0 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int FUNC6 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 

int FUNC9(struct sock *parent, struct sock *child,
		      struct sk_buff *skb)
{
	int ret = 0;
	int state = child->sk_state;

	/* record NAPI ID of child */
	FUNC2(child, skb);

	FUNC7(FUNC8(child), skb);
	if (!FUNC3(child)) {
		ret = FUNC6(child, skb);
		/* Wakeup parent, send SIGIO */
		if (state == TCP_SYN_RECV && child->sk_state != state)
			parent->sk_data_ready(parent);
	} else {
		/* Alas, it is possible again, because we do lookup
		 * in main socket hash table and lock on listening
		 * socket does not protect us more.
		 */
		FUNC0(child, skb);
	}

	FUNC1(child);
	FUNC4(child);
	return ret;
}
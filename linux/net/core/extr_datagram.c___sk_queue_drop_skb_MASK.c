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
struct sock {int /*<<< orphan*/  sk_drops; } ;
struct sk_buff_head {int /*<<< orphan*/  lock; } ;
struct sk_buff {int /*<<< orphan*/  users; scalar_t__ next; } ;

/* Variables and functions */
 int ENOENT ; 
 unsigned int MSG_PEEK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct sock *sk, struct sk_buff_head *sk_queue,
			struct sk_buff *skb, unsigned int flags,
			void (*destructor)(struct sock *sk,
					   struct sk_buff *skb))
{
	int err = 0;

	if (flags & MSG_PEEK) {
		err = -ENOENT;
		FUNC3(&sk_queue->lock);
		if (skb->next) {
			FUNC0(skb, sk_queue);
			FUNC2(&skb->users);
			if (destructor)
				destructor(sk, skb);
			err = 0;
		}
		FUNC4(&sk_queue->lock);
	}

	FUNC1(&sk->sk_drops);
	return err;
}
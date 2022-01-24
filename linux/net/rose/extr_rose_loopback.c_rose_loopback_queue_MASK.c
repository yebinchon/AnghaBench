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
struct sk_buff {int dummy; } ;
struct rose_neigh {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ ROSE_LOOPBACK_LIMIT ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  loopback_queue ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct sk_buff* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct sk_buff*) ; 

int FUNC7(struct sk_buff *skb, struct rose_neigh *neigh)
{
	struct sk_buff *skbn = NULL;

	if (FUNC5(&loopback_queue) < ROSE_LOOPBACK_LIMIT)
		skbn = FUNC4(skb, GFP_ATOMIC);

	if (skbn) {
		FUNC0(skb);
		FUNC6(&loopback_queue, skbn);

		if (!FUNC2())
			FUNC3();
	} else {
		FUNC1(skb);
	}

	return 1;
}
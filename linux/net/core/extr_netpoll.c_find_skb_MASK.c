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
struct sk_buff {int /*<<< orphan*/  users; } ;
struct netpoll {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct sk_buff* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  skb_pool ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static struct sk_buff *FUNC7(struct netpoll *np, int len, int reserve)
{
	int count = 0;
	struct sk_buff *skb;

	FUNC6();
	FUNC3();
repeat:

	skb = FUNC0(len, GFP_ATOMIC);
	if (!skb)
		skb = FUNC4(&skb_pool);

	if (!skb) {
		if (++count < 10) {
			FUNC1(np->dev);
			goto repeat;
		}
		return NULL;
	}

	FUNC2(&skb->users, 1);
	FUNC5(skb, reserve);
	return skb;
}
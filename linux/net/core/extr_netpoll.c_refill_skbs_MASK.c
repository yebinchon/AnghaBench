#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct TYPE_3__ {scalar_t__ qlen; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ MAX_SKBS ; 
 int /*<<< orphan*/  MAX_SKB_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct sk_buff*) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ skb_pool ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(void)
{
	struct sk_buff *skb;
	unsigned long flags;

	FUNC2(&skb_pool.lock, flags);
	while (skb_pool.qlen < MAX_SKBS) {
		skb = FUNC1(MAX_SKB_SIZE, GFP_ATOMIC);
		if (!skb)
			break;

		FUNC0(&skb_pool, skb);
	}
	FUNC3(&skb_pool.lock, flags);
}
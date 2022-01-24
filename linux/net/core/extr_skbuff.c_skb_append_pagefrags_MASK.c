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
struct sk_buff {int dummy; } ;
struct page {int dummy; } ;
struct TYPE_2__ {int nr_frags; int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int MAX_SKB_FRAGS ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int,struct page*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int,struct page*,int,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 TYPE_1__* FUNC4 (struct sk_buff*) ; 

int FUNC5(struct sk_buff *skb, struct page *page,
			 int offset, size_t size)
{
	int i = FUNC4(skb)->nr_frags;

	if (FUNC1(skb, i, page, offset)) {
		FUNC3(&FUNC4(skb)->frags[i - 1], size);
	} else if (i < MAX_SKB_FRAGS) {
		FUNC0(page);
		FUNC2(skb, i, page, offset, size);
	} else {
		return -EMSGSIZE;
	}

	return 0;
}
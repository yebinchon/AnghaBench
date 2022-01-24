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
struct sk_buff {scalar_t__ len; scalar_t__ head; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NUMA_NO_NODE ; 
 struct sk_buff* FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff const*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff const*,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct sk_buff const*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 
 int FUNC6 (struct sk_buff const*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 

struct sk_buff *FUNC9(const struct sk_buff *skb,
				int newheadroom, int newtailroom,
				gfp_t gfp_mask)
{
	/*
	 *	Allocate the copy buffer
	 */
	struct sk_buff *n = FUNC1(newheadroom + skb->len + newtailroom,
					gfp_mask, FUNC2(skb),
					NUMA_NO_NODE);
	int oldheadroom = FUNC6(skb);
	int head_copy_len, head_copy_off;

	if (!n)
		return NULL;

	FUNC8(n, newheadroom);

	/* Set the tail pointer and length */
	FUNC7(n, skb->len);

	head_copy_len = oldheadroom;
	head_copy_off = 0;
	if (newheadroom <= head_copy_len)
		head_copy_len = newheadroom;
	else
		head_copy_off = newheadroom - head_copy_len;

	/* Copy the linear header and data. */
	FUNC0(FUNC3(skb, -head_copy_len, n->head + head_copy_off,
			     skb->len + head_copy_len));

	FUNC4(n, skb);

	FUNC5(n, newheadroom - oldheadroom);

	return n;
}
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
struct sk_buff {unsigned int data_len; scalar_t__ len; int /*<<< orphan*/  head; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NUMA_NO_NODE ; 
 struct sk_buff* FUNC1 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff const*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff const*,int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct sk_buff const*) ; 
 unsigned int FUNC5 (struct sk_buff const*) ; 
 int FUNC6 (struct sk_buff const*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 

struct sk_buff *FUNC9(const struct sk_buff *skb, gfp_t gfp_mask)
{
	int headerlen = FUNC6(skb);
	unsigned int size = FUNC5(skb) + skb->data_len;
	struct sk_buff *n = FUNC1(size, gfp_mask,
					FUNC2(skb), NUMA_NO_NODE);

	if (!n)
		return NULL;

	/* Set the data pointer */
	FUNC8(n, headerlen);
	/* Set the tail pointer and length */
	FUNC7(n, skb->len);

	FUNC0(FUNC3(skb, -headerlen, n->head, headerlen + skb->len));

	FUNC4(n, skb);
	return n;
}
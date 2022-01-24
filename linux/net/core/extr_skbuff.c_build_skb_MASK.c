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
struct sk_buff {int head_frag; int pfmemalloc; } ;

/* Variables and functions */
 struct sk_buff* FUNC0 (void*,unsigned int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 

struct sk_buff *FUNC3(void *data, unsigned int frag_size)
{
	struct sk_buff *skb = FUNC0(data, frag_size);

	if (skb && frag_size) {
		skb->head_frag = 1;
		if (FUNC1(FUNC2(data)))
			skb->pfmemalloc = 1;
	}
	return skb;
}
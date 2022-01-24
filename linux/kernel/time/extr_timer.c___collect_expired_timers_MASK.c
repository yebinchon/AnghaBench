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
struct timer_base {unsigned long clk; struct hlist_head* vectors; int /*<<< orphan*/  pending_map; } ;
struct hlist_head {int dummy; } ;

/* Variables and functions */
 unsigned long LVL_CLK_MASK ; 
 unsigned long LVL_CLK_SHIFT ; 
 int LVL_DEPTH ; 
 unsigned long LVL_MASK ; 
 int LVL_SIZE ; 
 scalar_t__ FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hlist_head*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct timer_base *base,
				    struct hlist_head *heads)
{
	unsigned long clk = base->clk;
	struct hlist_head *vec;
	int i, levels = 0;
	unsigned int idx;

	for (i = 0; i < LVL_DEPTH; i++) {
		idx = (clk & LVL_MASK) + i * LVL_SIZE;

		if (FUNC0(idx, base->pending_map)) {
			vec = base->vectors + idx;
			FUNC1(vec, heads++);
			levels++;
		}
		/* Is it time to look at the next level? */
		if (clk & LVL_CLK_MASK)
			break;
		/* Shift clock for the next level granularity */
		clk >>= LVL_CLK_SHIFT;
	}
	return levels;
}
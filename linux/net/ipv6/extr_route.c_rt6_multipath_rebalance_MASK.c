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
struct fib6_info {scalar_t__ should_flush; int /*<<< orphan*/  fib6_nsiblings; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 struct fib6_info* FUNC1 (struct fib6_info*) ; 
 int FUNC2 (struct fib6_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct fib6_info*,int) ; 

void FUNC4(struct fib6_info *rt)
{
	struct fib6_info *first;
	int total;

	/* In case the entire multipath route was marked for flushing,
	 * then there is no need to rebalance upon the removal of every
	 * sibling route.
	 */
	if (!rt->fib6_nsiblings || rt->should_flush)
		return;

	/* During lookup routes are evaluated in order, so we need to
	 * make sure upper bounds are assigned from the first sibling
	 * onwards.
	 */
	first = FUNC1(rt);
	if (FUNC0(!first))
		return;

	total = FUNC2(first);
	FUNC3(first, total);
}
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
struct fib6_node {int /*<<< orphan*/  leaf; } ;
struct fib6_info {scalar_t__ fib6_metric; TYPE_1__* fib6_table; int /*<<< orphan*/  fib6_next; int /*<<< orphan*/  fib6_node; } ;
struct TYPE_2__ {int /*<<< orphan*/  tb6_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct fib6_info*) ; 

__attribute__((used)) static struct fib6_info *FUNC3(const struct fib6_info *rt)
{
	struct fib6_info *iter;
	struct fib6_node *fn;

	fn = FUNC1(rt->fib6_node,
			FUNC0(&rt->fib6_table->tb6_lock));
	iter = FUNC1(fn->leaf,
			FUNC0(&rt->fib6_table->tb6_lock));
	while (iter) {
		if (iter->fib6_metric == rt->fib6_metric &&
		    FUNC2(iter))
			return iter;
		iter = FUNC1(iter->fib6_next,
				FUNC0(&rt->fib6_table->tb6_lock));
	}

	return NULL;
}
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
struct fib6_node {int fn_sernum; int /*<<< orphan*/  parent; } ;
struct fib6_info {TYPE_1__* fib6_table; int /*<<< orphan*/  fib6_node; } ;
struct TYPE_2__ {int /*<<< orphan*/  tb6_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct fib6_node* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(struct fib6_info *rt,
					   int sernum)
{
	struct fib6_node *fn = FUNC1(rt->fib6_node,
				FUNC0(&rt->fib6_table->tb6_lock));

	/* paired with smp_rmb() in rt6_get_cookie_safe() */
	FUNC2();
	while (fn) {
		fn->fn_sernum = sernum;
		fn = FUNC1(fn->parent,
				FUNC0(&rt->fib6_table->tb6_lock));
	}
}
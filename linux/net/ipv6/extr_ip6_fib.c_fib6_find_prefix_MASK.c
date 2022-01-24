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
struct TYPE_2__ {struct fib6_node* fib6_null_entry; } ;
struct net {TYPE_1__ ipv6; } ;
struct fib6_table {int /*<<< orphan*/  tb6_lock; } ;
struct fib6_node {int fn_flags; int /*<<< orphan*/  leaf; int /*<<< orphan*/  right; int /*<<< orphan*/  left; } ;
struct fib6_info {int fn_flags; int /*<<< orphan*/  leaf; int /*<<< orphan*/  right; int /*<<< orphan*/  left; } ;

/* Variables and functions */
 struct fib6_node* FUNC0 (struct fib6_node*) ; 
 int RTN_ROOT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct fib6_node* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct fib6_info *FUNC3(struct net *net,
					 struct fib6_table *table,
					 struct fib6_node *fn)
{
	struct fib6_node *child_left, *child_right;

	if (fn->fn_flags & RTN_ROOT)
		return net->ipv6.fib6_null_entry;

	while (fn) {
		child_left = FUNC2(fn->left,
				    FUNC1(&table->tb6_lock));
		child_right = FUNC2(fn->right,
				    FUNC1(&table->tb6_lock));
		if (child_left)
			return FUNC2(child_left->leaf,
					FUNC1(&table->tb6_lock));
		if (child_right)
			return FUNC2(child_right->leaf,
					FUNC1(&table->tb6_lock));

		fn = FUNC0(fn);
	}
	return NULL;
}
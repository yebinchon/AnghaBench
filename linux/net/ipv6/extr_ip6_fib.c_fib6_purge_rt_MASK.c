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
struct net {int dummy; } ;
struct fib6_table {int /*<<< orphan*/  tb6_lock; } ;
struct fib6_node {int fn_flags; int /*<<< orphan*/  parent; int /*<<< orphan*/  leaf; } ;
struct fib6_info {int /*<<< orphan*/  fib6_ref; int /*<<< orphan*/  nh_list; scalar_t__ nh; struct fib6_table* fib6_table; } ;

/* Variables and functions */
 int RTN_RTINFO ; 
 int /*<<< orphan*/  FUNC0 (struct fib6_info*,struct fib6_table*) ; 
 struct fib6_info* FUNC1 (struct net*,struct fib6_table*,struct fib6_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct fib6_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct fib6_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct fib6_info*) ; 
 void* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct fib6_info *rt, struct fib6_node *fn,
			  struct net *net)
{
	struct fib6_table *table = rt->fib6_table;

	FUNC0(rt, table);

	if (rt->nh && !FUNC5(&rt->nh_list))
		FUNC4(&rt->nh_list);

	if (FUNC9(&rt->fib6_ref) != 1) {
		/* This route is used as dummy address holder in some split
		 * nodes. It is not leaked, but it still holds other resources,
		 * which must be released in time. So, scan ascendant nodes
		 * and replace dummy references to this route with references
		 * to still alive ones.
		 */
		while (fn) {
			struct fib6_info *leaf = FUNC8(fn->leaf,
					    FUNC6(&table->tb6_lock));
			struct fib6_info *new_leaf;
			if (!(fn->fn_flags & RTN_RTINFO) && leaf == rt) {
				new_leaf = FUNC1(net, table, fn);
				FUNC2(new_leaf);

				FUNC7(fn->leaf, new_leaf);
				FUNC3(rt);
			}
			fn = FUNC8(fn->parent,
				    FUNC6(&table->tb6_lock));
		}
	}
}
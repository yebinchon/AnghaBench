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
struct TYPE_2__ {scalar_t__ fib6_null_entry; } ;
struct net {TYPE_1__ ipv6; } ;
struct flowi6 {int flowi6_flags; int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;
struct fib6_table {int /*<<< orphan*/  tb6_root; } ;
struct fib6_result {scalar_t__ f6i; } ;
struct fib6_node {int dummy; } ;

/* Variables and functions */
 int FLOWI_FLAG_SKIP_NH_OIF ; 
 int RT6_LOOKUP_F_REACHABLE ; 
 struct fib6_node* FUNC0 (struct fib6_node*,int /*<<< orphan*/ *) ; 
 struct fib6_node* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net*,struct fib6_node*,int,struct fib6_result*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net*,struct fib6_result*,struct fib6_table*,struct flowi6*) ; 

int FUNC4(struct net *net, struct fib6_table *table, int oif,
		      struct flowi6 *fl6, struct fib6_result *res, int strict)
{
	struct fib6_node *fn, *saved_fn;

	fn = FUNC1(&table->tb6_root, &fl6->daddr, &fl6->saddr);
	saved_fn = fn;

	if (fl6->flowi6_flags & FLOWI_FLAG_SKIP_NH_OIF)
		oif = 0;

redo_rt6_select:
	FUNC2(net, fn, oif, res, strict);
	if (res->f6i == net->ipv6.fib6_null_entry) {
		fn = FUNC0(fn, &fl6->saddr);
		if (fn)
			goto redo_rt6_select;
		else if (strict & RT6_LOOKUP_F_REACHABLE) {
			/* also consider unreachable route */
			strict &= ~RT6_LOOKUP_F_REACHABLE;
			fn = saved_fn;
			goto redo_rt6_select;
		}
	}

	FUNC3(net, res, table, fl6);

	return 0;
}
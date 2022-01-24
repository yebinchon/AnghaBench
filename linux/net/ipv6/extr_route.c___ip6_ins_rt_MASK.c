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
struct nl_info {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct fib6_table {int /*<<< orphan*/  tb6_lock; int /*<<< orphan*/  tb6_root; } ;
struct fib6_info {struct fib6_table* fib6_table; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct fib6_info*,struct nl_info*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct fib6_info *rt, struct nl_info *info,
			struct netlink_ext_ack *extack)
{
	int err;
	struct fib6_table *table;

	table = rt->fib6_table;
	FUNC1(&table->tb6_lock);
	err = FUNC0(&table->tb6_root, rt, info, extack);
	FUNC2(&table->tb6_lock);

	return err;
}
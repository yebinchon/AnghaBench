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
struct sock {int dummy; } ;
struct netlink_table {int /*<<< orphan*/  hash; } ;
struct netlink_compare_arg {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  node; int /*<<< orphan*/  portid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct netlink_compare_arg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  netlink_rhashtable_params ; 
 TYPE_1__* FUNC1 (struct sock*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct netlink_compare_arg*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 

__attribute__((used)) static int FUNC4(struct netlink_table *table, struct sock *sk)
{
	struct netlink_compare_arg arg;

	FUNC0(&arg, FUNC3(sk), FUNC1(sk)->portid);
	return FUNC2(&table->hash, &arg,
					    &FUNC1(sk)->node,
					    netlink_rhashtable_params);
}
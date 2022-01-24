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
struct rds_sock {int /*<<< orphan*/  rs_bound_addr; int /*<<< orphan*/  rs_bound_node; int /*<<< orphan*/  rs_bound_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  bind_hash_table ; 
 int /*<<< orphan*/  ht_parms ; 
 int /*<<< orphan*/  in6addr_any ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rds_sock*) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct rds_sock*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC5(struct rds_sock *rs)
{

	if (FUNC0(&rs->rs_bound_addr))
		return;

	FUNC3("rs %p unbinding from %pI6c:%d\n",
		 rs, &rs->rs_bound_addr,
		 FUNC1(rs->rs_bound_port));

	FUNC4(&bind_hash_table, &rs->rs_bound_node, ht_parms);
	FUNC2(rs);
	rs->rs_bound_addr = in6addr_any;
}
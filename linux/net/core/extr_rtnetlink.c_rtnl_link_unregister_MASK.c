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
struct rtnl_link_ops {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rtnl_link_ops*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pernet_ops_rwsem ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct rtnl_link_ops *ops)
{
	/* Close the race with setup_net() and cleanup_net() */
	FUNC1(&pernet_ops_rwsem);
	FUNC2();
	FUNC0(ops);
	FUNC3();
	FUNC4(&pernet_ops_rwsem);
}
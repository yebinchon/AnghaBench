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
struct rtnl_link_ops {int /*<<< orphan*/  list; scalar_t__ dellink; scalar_t__ setup; int /*<<< orphan*/  kind; } ;

/* Variables and functions */
 int EEXIST ; 
 int /*<<< orphan*/  link_ops ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ unregister_netdevice_queue ; 

int FUNC2(struct rtnl_link_ops *ops)
{
	if (FUNC1(ops->kind))
		return -EEXIST;

	/* The check for setup is here because if ops
	 * does not have that filled up, it is not possible
	 * to use the ops for creating device. So do not
	 * fill up dellink as well. That disables rtnl_dellink.
	 */
	if (ops->setup && !ops->dellink)
		ops->dellink = unregister_netdevice_queue;

	FUNC0(&ops->list, &link_ops);
	return 0;
}
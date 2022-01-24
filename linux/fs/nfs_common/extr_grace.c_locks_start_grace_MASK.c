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
struct TYPE_2__ {int /*<<< orphan*/  inum; } ;
struct net {TYPE_1__ ns; } ;
struct lock_manager {int /*<<< orphan*/  list; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  grace_lock ; 
 int /*<<< orphan*/  grace_net_id ; 
 struct net init_net ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct list_head*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 struct list_head* FUNC3 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(struct net *net, struct lock_manager *lm)
{
	struct list_head *grace_list = FUNC3(net, grace_net_id);

	FUNC4(&grace_lock);
	if (FUNC2(&lm->list))
		FUNC1(&lm->list, grace_list);
	else
		FUNC0(1, "double list_add attempt detected in net %x %s\n",
		     net->ns.inum, (net == &init_net) ? "(init_net)" : "");
	FUNC5(&grace_lock);
}
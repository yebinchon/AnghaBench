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
struct netpoll_info {int /*<<< orphan*/  dev_lock; } ;
struct net_device {int /*<<< orphan*/  npinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  netpoll_srcu ; 
 struct netpoll_info* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

void FUNC5(struct net_device *dev)
{
	struct netpoll_info *ni;
	int idx;
	FUNC1();
	idx = FUNC3(&netpoll_srcu);
	ni = FUNC2(dev->npinfo, &netpoll_srcu);
	if (ni)
		FUNC0(&ni->dev_lock);
	FUNC4(&netpoll_srcu, idx);
}
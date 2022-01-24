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
 struct netpoll_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct net_device *dev)
{
	struct netpoll_info *ni;
	FUNC1();
	ni = FUNC0(dev->npinfo);
	if (ni)
		FUNC3(&ni->dev_lock);
	FUNC2();
}
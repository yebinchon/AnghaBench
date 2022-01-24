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
struct kobject {int dummy; } ;
struct TYPE_2__ {struct kobject kobj; } ;
struct net_device {TYPE_1__ dev; } ;
struct net_bridge {int /*<<< orphan*/  ifobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  bridge_forward ; 
 int /*<<< orphan*/  bridge_group ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct net_bridge* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct kobject*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct kobject*,int /*<<< orphan*/ *) ; 

void FUNC4(struct net_device *dev)
{
	struct kobject *kobj = &dev->dev.kobj;
	struct net_bridge *br = FUNC1(dev);

	FUNC0(br->ifobj);
	FUNC2(kobj, &bridge_forward);
	FUNC3(kobj, &bridge_group);
}
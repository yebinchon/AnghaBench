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
struct net_bridge_port {TYPE_1__* dev; int /*<<< orphan*/  sysfs_name; int /*<<< orphan*/  kobj; struct net_bridge* br; } ;
struct net_bridge {int /*<<< orphan*/  dev; int /*<<< orphan*/  ifobj; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFNAMSIZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct net_bridge_port *p)
{
	struct net_bridge *br = p->br;
	int err;

	/* If a rename fails, the rollback will cause another
	 * rename call with the existing name.
	 */
	if (!FUNC2(p->sysfs_name, p->dev->name, IFNAMSIZ))
		return 0;

	err = FUNC3(br->ifobj, &p->kobj,
				p->sysfs_name, p->dev->name);
	if (err)
		FUNC0(br->dev, "unable to rename link %s to %s",
			      p->sysfs_name, p->dev->name);
	else
		FUNC1(p->sysfs_name, p->dev->name, IFNAMSIZ);

	return err;
}
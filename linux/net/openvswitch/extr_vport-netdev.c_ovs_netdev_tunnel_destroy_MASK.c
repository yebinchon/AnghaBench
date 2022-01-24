#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vport {int /*<<< orphan*/  rcu; TYPE_1__* dev; } ;
struct TYPE_4__ {scalar_t__ reg_state; } ;

/* Variables and functions */
 scalar_t__ NETREG_REGISTERED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct vport*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  vport_netdev_free ; 

void FUNC7(struct vport *vport)
{
	FUNC5();
	if (FUNC2(vport->dev))
		FUNC3(vport);

	/* We can be invoked by both explicit vport deletion and
	 * underlying netdev deregistration; delete the link only
	 * if it's not already shutting down.
	 */
	if (vport->dev->reg_state == NETREG_REGISTERED)
		FUNC4(vport->dev);
	FUNC1(vport->dev);
	vport->dev = NULL;
	FUNC6();

	FUNC0(&vport->rcu, vport_netdev_free);
}
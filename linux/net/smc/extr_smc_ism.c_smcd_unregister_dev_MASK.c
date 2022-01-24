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
struct smcd_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  event_wq; int /*<<< orphan*/  list; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  VLAN_VID_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct smcd_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ smcd_dev_list ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct smcd_dev *smcd)
{
	FUNC5(&smcd_dev_list.lock);
	FUNC3(&smcd->list);
	FUNC6(&smcd_dev_list.lock);
	FUNC2(smcd->event_wq);
	FUNC0(smcd->event_wq);
	FUNC4(smcd, 0, VLAN_VID_MASK);

	FUNC1(&smcd->dev);
}
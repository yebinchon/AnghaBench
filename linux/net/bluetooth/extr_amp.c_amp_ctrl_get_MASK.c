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
struct amp_ctrl {int /*<<< orphan*/  kref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct amp_ctrl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct amp_ctrl *ctrl)
{
	FUNC0("ctrl %p orig refcnt %d", ctrl,
	       FUNC2(&ctrl->kref));

	FUNC1(&ctrl->kref);
}
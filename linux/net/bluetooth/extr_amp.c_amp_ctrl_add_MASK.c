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
typedef  int /*<<< orphan*/  u8 ;
struct amp_mgr {int /*<<< orphan*/  amp_ctrls_lock; int /*<<< orphan*/  amp_ctrls; } ;
struct amp_ctrl {int /*<<< orphan*/  list; int /*<<< orphan*/  id; int /*<<< orphan*/  kref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct amp_mgr*,struct amp_ctrl*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct amp_ctrl* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct amp_ctrl *FUNC6(struct amp_mgr *mgr, u8 id)
{
	struct amp_ctrl *ctrl;

	ctrl = FUNC2(sizeof(*ctrl), GFP_KERNEL);
	if (!ctrl)
		return NULL;

	FUNC1(&ctrl->kref);
	ctrl->id = id;

	FUNC4(&mgr->amp_ctrls_lock);
	FUNC3(&ctrl->list, &mgr->amp_ctrls);
	FUNC5(&mgr->amp_ctrls_lock);

	FUNC0("mgr %p ctrl %p", mgr, ctrl);

	return ctrl;
}
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
struct pm_qos_flags_request {int /*<<< orphan*/  node; scalar_t__ flags; } ;
struct pm_qos_flags {scalar_t__ effective_flags; int /*<<< orphan*/  list; } ;
typedef  scalar_t__ s32 ;
typedef  enum pm_qos_req_action { ____Placeholder_pm_qos_req_action } pm_qos_req_action ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
#define  PM_QOS_ADD_REQ 130 
#define  PM_QOS_REMOVE_REQ 129 
#define  PM_QOS_UPDATE_REQ 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pm_qos_flags*,struct pm_qos_flags_request*) ; 
 int /*<<< orphan*/  pm_qos_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__,scalar_t__) ; 

bool FUNC7(struct pm_qos_flags *pqf,
			 struct pm_qos_flags_request *req,
			 enum pm_qos_req_action action, s32 val)
{
	unsigned long irqflags;
	s32 prev_value, curr_value;

	FUNC4(&pm_qos_lock, irqflags);

	prev_value = FUNC2(&pqf->list) ? 0 : pqf->effective_flags;

	switch (action) {
	case PM_QOS_REMOVE_REQ:
		FUNC3(pqf, req);
		break;
	case PM_QOS_UPDATE_REQ:
		FUNC3(pqf, req);
		/* fall through */
	case PM_QOS_ADD_REQ:
		req->flags = val;
		FUNC0(&req->node);
		FUNC1(&req->node, &pqf->list);
		pqf->effective_flags |= val;
		break;
	default:
		/* no action */
		;
	}

	curr_value = FUNC2(&pqf->list) ? 0 : pqf->effective_flags;

	FUNC5(&pm_qos_lock, irqflags);

	FUNC6(action, prev_value, curr_value);
	return prev_value != curr_value;
}
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
struct pm_qos_constraints {int default_value; scalar_t__ notifiers; int /*<<< orphan*/  list; } ;
struct plist_node {int dummy; } ;
typedef  enum pm_qos_req_action { ____Placeholder_pm_qos_req_action } pm_qos_req_action ;

/* Variables and functions */
#define  PM_QOS_ADD_REQ 130 
 int PM_QOS_DEFAULT_VALUE ; 
#define  PM_QOS_REMOVE_REQ 129 
#define  PM_QOS_UPDATE_REQ 128 
 int /*<<< orphan*/  FUNC0 (scalar_t__,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct plist_node*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct plist_node*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct plist_node*,int) ; 
 int FUNC4 (struct pm_qos_constraints*) ; 
 int /*<<< orphan*/  pm_qos_lock ; 
 int /*<<< orphan*/  FUNC5 (struct pm_qos_constraints*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int) ; 

int FUNC9(struct pm_qos_constraints *c, struct plist_node *node,
			 enum pm_qos_req_action action, int value)
{
	unsigned long flags;
	int prev_value, curr_value, new_value;
	int ret;

	FUNC6(&pm_qos_lock, flags);
	prev_value = FUNC4(c);
	if (value == PM_QOS_DEFAULT_VALUE)
		new_value = c->default_value;
	else
		new_value = value;

	switch (action) {
	case PM_QOS_REMOVE_REQ:
		FUNC2(node, &c->list);
		break;
	case PM_QOS_UPDATE_REQ:
		/*
		 * to change the list, we atomically remove, reinit
		 * with new value and add, then see if the extremal
		 * changed
		 */
		FUNC2(node, &c->list);
		/* fall through */
	case PM_QOS_ADD_REQ:
		FUNC3(node, new_value);
		FUNC1(node, &c->list);
		break;
	default:
		/* no action */
		;
	}

	curr_value = FUNC4(c);
	FUNC5(c, curr_value);

	FUNC7(&pm_qos_lock, flags);

	FUNC8(action, prev_value, curr_value);
	if (prev_value != curr_value) {
		ret = 1;
		if (c->notifiers)
			FUNC0(c->notifiers,
						     (unsigned long)curr_value,
						     NULL);
	} else {
		ret = 0;
	}
	return ret;
}
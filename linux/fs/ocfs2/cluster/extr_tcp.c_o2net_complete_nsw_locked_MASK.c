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
struct o2net_status_wait {int ns_sys_status; int /*<<< orphan*/  ns_wq; int /*<<< orphan*/  ns_id; int /*<<< orphan*/  ns_status; int /*<<< orphan*/  ns_node_item; } ;
struct o2net_node {int /*<<< orphan*/  nn_status_idr; int /*<<< orphan*/  nn_lock; } ;
typedef  int /*<<< orphan*/  s32 ;
typedef  enum o2net_system_error { ____Placeholder_o2net_system_error } o2net_system_error ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct o2net_node *nn,
				      struct o2net_status_wait *nsw,
				      enum o2net_system_error sys_status,
				      s32 status)
{
	FUNC0(&nn->nn_lock);

	if (!FUNC3(&nsw->ns_node_item)) {
		FUNC2(&nsw->ns_node_item);
		nsw->ns_sys_status = sys_status;
		nsw->ns_status = status;
		FUNC1(&nn->nn_status_idr, nsw->ns_id);
		FUNC4(&nsw->ns_wq);
	}
}
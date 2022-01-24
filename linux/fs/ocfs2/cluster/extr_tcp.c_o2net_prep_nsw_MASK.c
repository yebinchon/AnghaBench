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
struct o2net_status_wait {int ns_id; scalar_t__ ns_status; int /*<<< orphan*/  ns_sys_status; int /*<<< orphan*/  ns_wq; int /*<<< orphan*/  ns_node_item; } ;
struct o2net_node {int /*<<< orphan*/  nn_lock; int /*<<< orphan*/  nn_status_list; int /*<<< orphan*/  nn_status_idr; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  O2NET_ERR_NONE ; 
 int FUNC0 (int /*<<< orphan*/ *,struct o2net_status_wait*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct o2net_node *nn, struct o2net_status_wait *nsw)
{
	int ret;

	FUNC3(&nn->nn_lock);
	ret = FUNC0(&nn->nn_status_idr, nsw, 0, 0, GFP_ATOMIC);
	if (ret >= 0) {
		nsw->ns_id = ret;
		FUNC2(&nsw->ns_node_item, &nn->nn_status_list);
	}
	FUNC4(&nn->nn_lock);
	if (ret < 0)
		return ret;

	FUNC1(&nsw->ns_wq);
	nsw->ns_sys_status = O2NET_ERR_NONE;
	nsw->ns_status = 0;
	return 0;
}
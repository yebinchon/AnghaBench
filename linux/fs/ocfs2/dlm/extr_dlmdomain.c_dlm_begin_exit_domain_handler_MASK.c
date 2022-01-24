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
typedef  int /*<<< orphan*/  u32 ;
struct o2net_msg {scalar_t__ buf; } ;
struct dlm_exit_domain {unsigned int node_idx; } ;
struct dlm_ctxt {int /*<<< orphan*/  spinlock; int /*<<< orphan*/  exit_domain_map; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dlm_ctxt*) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_ctxt*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct o2net_msg *msg, u32 len,
					 void *data, void **ret_data)
{
	struct dlm_ctxt *dlm = data;
	unsigned int node;
	struct dlm_exit_domain *exit_msg = (struct dlm_exit_domain *) msg->buf;

	if (!FUNC0(dlm))
		return 0;

	node = exit_msg->node_idx;
	FUNC2(0, "%s: Node %u sent a begin exit domain message\n", dlm->name, node);

	FUNC4(&dlm->spinlock);
	FUNC3(node, dlm->exit_domain_map);
	FUNC5(&dlm->spinlock);

	FUNC1(dlm);

	return 0;
}
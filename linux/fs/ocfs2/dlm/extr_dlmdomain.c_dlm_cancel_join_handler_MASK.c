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
struct dlm_ctxt {scalar_t__ joining_node; int /*<<< orphan*/  spinlock; } ;
struct dlm_cancel_join {scalar_t__ node_idx; int /*<<< orphan*/  name_len; int /*<<< orphan*/  domain; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DLM_LOCK_RES_OWNER_UNKNOWN ; 
 struct dlm_ctxt* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_ctxt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dlm_domain_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct o2net_msg *msg, u32 len, void *data,
				   void **ret_data)
{
	struct dlm_cancel_join *cancel;
	struct dlm_ctxt *dlm = NULL;

	cancel = (struct dlm_cancel_join *) msg->buf;

	FUNC3(0, "node %u cancels join on domain %s\n", cancel->node_idx,
		  cancel->domain);

	FUNC4(&dlm_domain_lock);
	dlm = FUNC1(cancel->domain, cancel->name_len);

	if (dlm) {
		FUNC4(&dlm->spinlock);

		/* Yikes, this guy wants to cancel his join. No
		 * problem, we simply cleanup our join state. */
		FUNC0(dlm->joining_node != cancel->node_idx);
		FUNC2(dlm, DLM_LOCK_RES_OWNER_UNKNOWN);

		FUNC5(&dlm->spinlock);
	}
	FUNC5(&dlm_domain_lock);

	return 0;
}
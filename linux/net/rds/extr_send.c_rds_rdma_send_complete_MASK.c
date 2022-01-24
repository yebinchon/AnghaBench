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
struct rm_rdma_op {struct rds_notifier* op_notifier; scalar_t__ op_notify; scalar_t__ op_active; } ;
struct rds_sock {int /*<<< orphan*/  rs_lock; int /*<<< orphan*/  rs_notify_queue; } ;
struct rds_notifier {int n_status; int /*<<< orphan*/  n_list; } ;
struct rds_message {int /*<<< orphan*/  m_rs_lock; struct rds_sock* m_rs; int /*<<< orphan*/  m_flags; struct rm_rdma_op rdma; } ;

/* Variables and functions */
 int /*<<< orphan*/  RDS_MSG_ON_SOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rds_sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct rds_sock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC10(struct rds_message *rm, int status)
{
	struct rds_sock *rs = NULL;
	struct rm_rdma_op *ro;
	struct rds_notifier *notifier;
	unsigned long flags;

	FUNC6(&rm->m_rs_lock, flags);

	ro = &rm->rdma;
	if (FUNC9(RDS_MSG_ON_SOCK, &rm->m_flags) &&
	    ro->op_active && ro->op_notify && ro->op_notifier) {
		notifier = ro->op_notifier;
		rs = rm->m_rs;
		FUNC3(FUNC1(rs));

		notifier->n_status = status;
		FUNC5(&rs->rs_lock);
		FUNC0(&notifier->n_list, &rs->rs_notify_queue);
		FUNC7(&rs->rs_lock);

		ro->op_notifier = NULL;
	}

	FUNC8(&rm->m_rs_lock, flags);

	if (rs) {
		FUNC2(rs);
		FUNC4(FUNC1(rs));
	}
}
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
struct rds_sock {int /*<<< orphan*/  rs_rdma_lock; int /*<<< orphan*/  rs_rdma_keys; } ;
struct rds_mr {int /*<<< orphan*/  r_invalidate; TYPE_1__* r_trans; int /*<<< orphan*/ * r_trans_private; int /*<<< orphan*/  r_rb_node; int /*<<< orphan*/  r_state; int /*<<< orphan*/  r_refcount; int /*<<< orphan*/  r_key; struct rds_sock* r_sock; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* free_mr ) (void*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RDS_MR_DEAD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct rds_mr *mr)
{
	struct rds_sock *rs = mr->r_sock;
	void *trans_private = NULL;
	unsigned long flags;

	FUNC2("RDS: destroy mr key is %x refcnt %u\n",
			mr->r_key, FUNC3(&mr->r_refcount));

	if (FUNC7(RDS_MR_DEAD, &mr->r_state))
		return;

	FUNC4(&rs->rs_rdma_lock, flags);
	if (!FUNC0(&mr->r_rb_node))
		FUNC1(&mr->r_rb_node, &rs->rs_rdma_keys);
	trans_private = mr->r_trans_private;
	mr->r_trans_private = NULL;
	FUNC5(&rs->rs_rdma_lock, flags);

	if (trans_private)
		mr->r_trans->free_mr(trans_private, mr->r_invalidate);
}
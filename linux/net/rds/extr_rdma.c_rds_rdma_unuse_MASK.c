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
typedef  int /*<<< orphan*/  u32 ;
struct rds_sock {int /*<<< orphan*/  rs_rdma_lock; int /*<<< orphan*/  rs_rdma_keys; } ;
struct rds_mr {int /*<<< orphan*/  r_trans_private; TYPE_1__* r_trans; int /*<<< orphan*/  r_rb_node; scalar_t__ r_use_once; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* sync_mr ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rds_mr*) ; 
 int /*<<< orphan*/  FUNC4 (struct rds_mr*) ; 
 struct rds_mr* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC9(struct rds_sock *rs, u32 r_key, int force)
{
	struct rds_mr *mr;
	unsigned long flags;
	int zot_me = 0;

	FUNC6(&rs->rs_rdma_lock, flags);
	mr = FUNC5(&rs->rs_rdma_keys, r_key, NULL);
	if (!mr) {
		FUNC1("rds: trying to unuse MR with unknown r_key %u!\n",
			 r_key);
		FUNC7(&rs->rs_rdma_lock, flags);
		return;
	}

	if (mr->r_use_once || force) {
		FUNC2(&mr->r_rb_node, &rs->rs_rdma_keys);
		FUNC0(&mr->r_rb_node);
		zot_me = 1;
	}
	FUNC7(&rs->rs_rdma_lock, flags);

	/* May have to issue a dma_sync on this memory region.
	 * Note we could avoid this if the operation was a RDMA READ,
	 * but at this point we can't tell. */
	if (mr->r_trans->sync_mr)
		mr->r_trans->sync_mr(mr->r_trans_private, DMA_FROM_DEVICE);

	/* If the MR was marked as invalidate, this will
	 * trigger an async flush. */
	if (zot_me) {
		FUNC3(mr);
		FUNC4(mr);
	}
}
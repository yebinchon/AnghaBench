#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct rds_sock {int /*<<< orphan*/  rs_rdma_lock; int /*<<< orphan*/  rs_rdma_keys; } ;
struct rds_mr {int /*<<< orphan*/  r_trans_private; TYPE_1__* r_trans; int /*<<< orphan*/  r_refcount; } ;
struct TYPE_4__ {struct rds_mr* op_rdma_mr; } ;
struct rds_message {scalar_t__ m_rdma_cookie; TYPE_2__ rdma; } ;
struct cmsghdr {scalar_t__ cmsg_len; } ;
typedef  int /*<<< orphan*/  rds_rdma_cookie_t ;
struct TYPE_3__ {int /*<<< orphan*/  (* sync_mr ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cmsghdr*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 struct rds_mr* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC9(struct rds_sock *rs, struct rds_message *rm,
			  struct cmsghdr *cmsg)
{
	unsigned long flags;
	struct rds_mr *mr;
	u32 r_key;
	int err = 0;

	if (cmsg->cmsg_len < FUNC1(sizeof(rds_rdma_cookie_t)) ||
	    rm->m_rdma_cookie != 0)
		return -EINVAL;

	FUNC2(&rm->m_rdma_cookie, FUNC0(cmsg), sizeof(rm->m_rdma_cookie));

	/* We are reusing a previously mapped MR here. Most likely, the
	 * application has written to the buffer, so we need to explicitly
	 * flush those writes to RAM. Otherwise the HCA may not see them
	 * when doing a DMA from that buffer.
	 */
	r_key = FUNC4(rm->m_rdma_cookie);

	FUNC6(&rs->rs_rdma_lock, flags);
	mr = FUNC3(&rs->rs_rdma_keys, r_key, NULL);
	if (!mr)
		err = -EINVAL;	/* invalid r_key */
	else
		FUNC5(&mr->r_refcount);
	FUNC7(&rs->rs_rdma_lock, flags);

	if (mr) {
		mr->r_trans->sync_mr(mr->r_trans_private, DMA_TO_DEVICE);
		rm->rdma.op_rdma_mr = mr;
	}
	return err;
}
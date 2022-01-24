#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct rds_sock {int dummy; } ;
struct TYPE_6__ {scalar_t__ op_rdma_mr; scalar_t__ op_active; } ;
struct TYPE_5__ {scalar_t__ op_rdma_mr; scalar_t__ op_active; } ;
struct TYPE_4__ {unsigned long op_nents; int /*<<< orphan*/ * op_sg; int /*<<< orphan*/ * op_mmp_znotifier; } ;
struct rds_message {TYPE_3__ atomic; TYPE_2__ rdma; TYPE_1__ data; int /*<<< orphan*/  m_rs_lock; struct rds_sock* m_rs; int /*<<< orphan*/  m_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  RDS_MSG_PAGEVEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct rds_sock*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct rds_sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct rds_sock*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(struct rds_message *rm)
{
	unsigned long i, flags;
	bool zcopy = false;

	if (FUNC13(FUNC12(RDS_MSG_PAGEVEC, &rm->m_flags)))
		return;

	FUNC10(&rm->m_rs_lock, flags);
	if (rm->m_rs) {
		struct rds_sock *rs = rm->m_rs;

		if (rm->data.op_mmp_znotifier) {
			zcopy = true;
			FUNC5(rs, rm->data.op_mmp_znotifier);
			FUNC7(rs);
			rm->data.op_mmp_znotifier = NULL;
		}
		FUNC9(FUNC6(rs));
		rm->m_rs = NULL;
	}
	FUNC11(&rm->m_rs_lock, flags);

	for (i = 0; i < rm->data.op_nents; i++) {
		/* XXX will have to put_page for page refs */
		if (!zcopy)
			FUNC0(FUNC8(&rm->data.op_sg[i]));
		else
			FUNC1(FUNC8(&rm->data.op_sg[i]));
	}
	rm->data.op_nents = 0;

	if (rm->rdma.op_active)
		FUNC4(&rm->rdma);
	if (rm->rdma.op_rdma_mr)
		FUNC3(rm->rdma.op_rdma_mr);

	if (rm->atomic.op_active)
		FUNC2(&rm->atomic);
	if (rm->atomic.op_rdma_mr)
		FUNC3(rm->atomic.op_rdma_mr);
}
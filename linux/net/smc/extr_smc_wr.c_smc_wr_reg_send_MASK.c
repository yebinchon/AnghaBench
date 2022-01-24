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
typedef  scalar_t__ u64 ;
struct TYPE_6__ {scalar_t__ wr_id; } ;
struct TYPE_5__ {TYPE_3__ wr; int /*<<< orphan*/  key; struct ib_mr* mr; } ;
struct smc_link {int wr_reg_state; int /*<<< orphan*/  wr_reg_wait; TYPE_2__ wr_reg; int /*<<< orphan*/  roce_qp; TYPE_1__* smcibdev; } ;
struct ib_mr {int /*<<< orphan*/  rkey; } ;
struct TYPE_4__ {int /*<<< orphan*/  roce_cq_send; } ;

/* Variables and functions */
#define  CONFIRMED 130 
 int EINTR ; 
 int EIO ; 
 int EPIPE ; 
 int ERESTARTSYS ; 
#define  FAILED 129 
 int IB_CQ_NEXT_COMP ; 
 int IB_CQ_REPORT_MISSED_EVENTS ; 
#define  POSTED 128 
 int /*<<< orphan*/  SMC_WR_REG_MR_WAIT_TIME ; 
 int FUNC0 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct smc_link*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int FUNC5(struct smc_link *link, struct ib_mr *mr)
{
	int rc;

	FUNC1(link->smcibdev->roce_cq_send,
			 IB_CQ_NEXT_COMP | IB_CQ_REPORT_MISSED_EVENTS);
	link->wr_reg_state = POSTED;
	link->wr_reg.wr.wr_id = (u64)(uintptr_t)mr;
	link->wr_reg.mr = mr;
	link->wr_reg.key = mr->rkey;
	rc = FUNC0(link->roce_qp, &link->wr_reg.wr, NULL);
	if (rc)
		return rc;

	rc = FUNC4(link->wr_reg_wait,
					      (link->wr_reg_state != POSTED),
					      SMC_WR_REG_MR_WAIT_TIME);
	if (!rc) {
		/* timeout - terminate connections */
		FUNC3(FUNC2(link));
		return -EPIPE;
	}
	if (rc == -ERESTARTSYS)
		return -EINTR;
	switch (link->wr_reg_state) {
	case CONFIRMED:
		rc = 0;
		break;
	case FAILED:
		rc = -EIO;
		break;
	case POSTED:
		rc = -EPIPE;
		break;
	}
	return rc;
}
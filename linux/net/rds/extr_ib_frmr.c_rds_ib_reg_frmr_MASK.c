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
struct scatterlist {int dummy; } ;
struct rds_ib_frmr {scalar_t__ fr_state; TYPE_2__* mr; } ;
struct TYPE_3__ {struct rds_ib_frmr frmr; } ;
struct rds_ib_mr {int /*<<< orphan*/  pool; struct rds_ib_device* device; struct rds_ib_connection* ic; TYPE_1__ u; } ;
struct rds_ib_device {int dummy; } ;
struct rds_ib_connection {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  rkey; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 struct rds_ib_mr* FUNC0 (int) ; 
 scalar_t__ FRMR_IS_FREE ; 
 scalar_t__ FUNC1 (struct rds_ib_mr*) ; 
 struct rds_ib_mr* FUNC2 (struct rds_ib_device*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct rds_ib_mr*,int) ; 
 int FUNC4 (struct rds_ib_device*,int /*<<< orphan*/ ,struct rds_ib_mr*,struct scatterlist*,unsigned long) ; 

struct rds_ib_mr *FUNC5(struct rds_ib_device *rds_ibdev,
				  struct rds_ib_connection *ic,
				  struct scatterlist *sg,
				  unsigned long nents, u32 *key)
{
	struct rds_ib_mr *ibmr = NULL;
	struct rds_ib_frmr *frmr;
	int ret;

	if (!ic) {
		/* TODO: Add FRWR support for RDS_GET_MR using proxy qp*/
		return FUNC0(-EOPNOTSUPP);
	}

	do {
		if (ibmr)
			FUNC3(ibmr, true);
		ibmr = FUNC2(rds_ibdev, nents);
		if (FUNC1(ibmr))
			return ibmr;
		frmr = &ibmr->u.frmr;
	} while (frmr->fr_state != FRMR_IS_FREE);

	ibmr->ic = ic;
	ibmr->device = rds_ibdev;
	ret = FUNC4(rds_ibdev, ibmr->pool, ibmr, sg, nents);
	if (ret == 0) {
		*key = frmr->mr->rkey;
	} else {
		FUNC3(ibmr, false);
		ibmr = FUNC0(ret);
	}

	return ibmr;
}
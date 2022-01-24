#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct rds_ib_frmr {int fr_inv; int fr_reg; int /*<<< orphan*/  fr_reg_done; int /*<<< orphan*/  fr_inv_done; } ;
struct TYPE_4__ {struct rds_ib_frmr frmr; } ;
struct rds_ib_mr {TYPE_1__ u; } ;
struct rds_ib_connection {int /*<<< orphan*/  i_fastreg_wrs; TYPE_2__* conn; } ;
struct ib_wc {scalar_t__ status; int /*<<< orphan*/  vendor_err; scalar_t__ wr_id; } ;
struct TYPE_5__ {int /*<<< orphan*/  c_faddr; int /*<<< orphan*/  c_laddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FRMR_IS_FREE ; 
 int /*<<< orphan*/  FRMR_IS_INUSE ; 
 int /*<<< orphan*/  FRMR_IS_STALE ; 
 scalar_t__ IB_WC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rds_ib_mr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct rds_ib_connection *ic, struct ib_wc *wc)
{
	struct rds_ib_mr *ibmr = (void *)(unsigned long)wc->wr_id;
	struct rds_ib_frmr *frmr = &ibmr->u.frmr;

	if (wc->status != IB_WC_SUCCESS) {
		FUNC4(ibmr, FRMR_IS_INUSE, FRMR_IS_STALE);
		if (FUNC2(ic->conn))
			FUNC3(ic->conn,
					  "frmr completion <%pI4,%pI4> status %u(%s), vendor_err 0x%x, disconnecting and reconnecting\n",
					  &ic->conn->c_laddr,
					  &ic->conn->c_faddr,
					  wc->status,
					  FUNC1(wc->status),
					  wc->vendor_err);
	}

	if (frmr->fr_inv) {
		FUNC4(ibmr, FRMR_IS_INUSE, FRMR_IS_FREE);
		frmr->fr_inv = false;
		FUNC6(&frmr->fr_inv_done);
	}

	if (frmr->fr_reg) {
		frmr->fr_reg = false;
		FUNC6(&frmr->fr_reg_done);
	}

	/* enforce order of frmr->{fr_reg,fr_inv} update
	 * before incrementing i_fastreg_wrs
	 */
	FUNC5();
	FUNC0(&ic->i_fastreg_wrs);
}
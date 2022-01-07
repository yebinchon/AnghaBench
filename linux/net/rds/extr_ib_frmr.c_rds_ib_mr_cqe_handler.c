
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rds_ib_frmr {int fr_inv; int fr_reg; int fr_reg_done; int fr_inv_done; } ;
struct TYPE_4__ {struct rds_ib_frmr frmr; } ;
struct rds_ib_mr {TYPE_1__ u; } ;
struct rds_ib_connection {int i_fastreg_wrs; TYPE_2__* conn; } ;
struct ib_wc {scalar_t__ status; int vendor_err; scalar_t__ wr_id; } ;
struct TYPE_5__ {int c_faddr; int c_laddr; } ;


 int FRMR_IS_FREE ;
 int FRMR_IS_INUSE ;
 int FRMR_IS_STALE ;
 scalar_t__ IB_WC_SUCCESS ;
 int atomic_inc (int *) ;
 int ib_wc_status_msg (scalar_t__) ;
 scalar_t__ rds_conn_up (TYPE_2__*) ;
 int rds_ib_conn_error (TYPE_2__*,char*,int *,int *,scalar_t__,int ,int ) ;
 int rds_transition_frwr_state (struct rds_ib_mr*,int ,int ) ;
 int smp_mb__before_atomic () ;
 int wake_up (int *) ;

void rds_ib_mr_cqe_handler(struct rds_ib_connection *ic, struct ib_wc *wc)
{
 struct rds_ib_mr *ibmr = (void *)(unsigned long)wc->wr_id;
 struct rds_ib_frmr *frmr = &ibmr->u.frmr;

 if (wc->status != IB_WC_SUCCESS) {
  rds_transition_frwr_state(ibmr, FRMR_IS_INUSE, FRMR_IS_STALE);
  if (rds_conn_up(ic->conn))
   rds_ib_conn_error(ic->conn,
       "frmr completion <%pI4,%pI4> status %u(%s), vendor_err 0x%x, disconnecting and reconnecting\n",
       &ic->conn->c_laddr,
       &ic->conn->c_faddr,
       wc->status,
       ib_wc_status_msg(wc->status),
       wc->vendor_err);
 }

 if (frmr->fr_inv) {
  rds_transition_frwr_state(ibmr, FRMR_IS_INUSE, FRMR_IS_FREE);
  frmr->fr_inv = 0;
  wake_up(&frmr->fr_inv_done);
 }

 if (frmr->fr_reg) {
  frmr->fr_reg = 0;
  wake_up(&frmr->fr_reg_done);
 }




 smp_mb__before_atomic();
 atomic_inc(&ic->i_fastreg_wrs);
}

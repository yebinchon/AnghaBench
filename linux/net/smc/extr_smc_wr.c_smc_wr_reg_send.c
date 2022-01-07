
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_6__ {scalar_t__ wr_id; } ;
struct TYPE_5__ {TYPE_3__ wr; int key; struct ib_mr* mr; } ;
struct smc_link {int wr_reg_state; int wr_reg_wait; TYPE_2__ wr_reg; int roce_qp; TYPE_1__* smcibdev; } ;
struct ib_mr {int rkey; } ;
struct TYPE_4__ {int roce_cq_send; } ;



 int EINTR ;
 int EIO ;
 int EPIPE ;
 int ERESTARTSYS ;

 int IB_CQ_NEXT_COMP ;
 int IB_CQ_REPORT_MISSED_EVENTS ;

 int SMC_WR_REG_MR_WAIT_TIME ;
 int ib_post_send (int ,TYPE_3__*,int *) ;
 int ib_req_notify_cq (int ,int) ;
 int smc_get_lgr (struct smc_link*) ;
 int smc_lgr_terminate (int ) ;
 int wait_event_interruptible_timeout (int ,int,int ) ;

int smc_wr_reg_send(struct smc_link *link, struct ib_mr *mr)
{
 int rc;

 ib_req_notify_cq(link->smcibdev->roce_cq_send,
    IB_CQ_NEXT_COMP | IB_CQ_REPORT_MISSED_EVENTS);
 link->wr_reg_state = 128;
 link->wr_reg.wr.wr_id = (u64)(uintptr_t)mr;
 link->wr_reg.mr = mr;
 link->wr_reg.key = mr->rkey;
 rc = ib_post_send(link->roce_qp, &link->wr_reg.wr, ((void*)0));
 if (rc)
  return rc;

 rc = wait_event_interruptible_timeout(link->wr_reg_wait,
           (link->wr_reg_state != 128),
           SMC_WR_REG_MR_WAIT_TIME);
 if (!rc) {

  smc_lgr_terminate(smc_get_lgr(link));
  return -EPIPE;
 }
 if (rc == -ERESTARTSYS)
  return -EINTR;
 switch (link->wr_reg_state) {
 case 130:
  rc = 0;
  break;
 case 129:
  rc = -EIO;
  break;
 case 128:
  rc = -EPIPE;
  break;
 }
 return rc;
}

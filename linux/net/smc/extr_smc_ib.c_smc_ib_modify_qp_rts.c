
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_link {int roce_qp; int psn_initial; } ;
struct ib_qp_attr {int max_rd_atomic; int sq_psn; int rnr_retry; int retry_cnt; int timeout; int qp_state; } ;
typedef int qp_attr ;


 int IB_QPS_RTS ;
 int IB_QP_MAX_QP_RD_ATOMIC ;
 int IB_QP_RETRY_CNT ;
 int IB_QP_RNR_RETRY ;
 int IB_QP_SQ_PSN ;
 int IB_QP_STATE ;
 int IB_QP_TIMEOUT ;
 int SMC_QP_RETRY_CNT ;
 int SMC_QP_RNR_RETRY ;
 int SMC_QP_TIMEOUT ;
 int ib_modify_qp (int ,struct ib_qp_attr*,int) ;
 int memset (struct ib_qp_attr*,int ,int) ;

int smc_ib_modify_qp_rts(struct smc_link *lnk)
{
 struct ib_qp_attr qp_attr;

 memset(&qp_attr, 0, sizeof(qp_attr));
 qp_attr.qp_state = IB_QPS_RTS;
 qp_attr.timeout = SMC_QP_TIMEOUT;
 qp_attr.retry_cnt = SMC_QP_RETRY_CNT;
 qp_attr.rnr_retry = SMC_QP_RNR_RETRY;
 qp_attr.sq_psn = lnk->psn_initial;
 qp_attr.max_rd_atomic = 1;


 return ib_modify_qp(lnk->roce_qp, &qp_attr,
       IB_QP_STATE | IB_QP_TIMEOUT | IB_QP_RETRY_CNT |
       IB_QP_SQ_PSN | IB_QP_RNR_RETRY |
       IB_QP_MAX_QP_RD_ATOMIC);
}

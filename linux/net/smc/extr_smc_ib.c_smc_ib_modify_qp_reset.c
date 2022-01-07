
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_link {int roce_qp; } ;
struct ib_qp_attr {int qp_state; } ;
typedef int qp_attr ;


 int IB_QPS_RESET ;
 int IB_QP_STATE ;
 int ib_modify_qp (int ,struct ib_qp_attr*,int ) ;
 int memset (struct ib_qp_attr*,int ,int) ;

int smc_ib_modify_qp_reset(struct smc_link *lnk)
{
 struct ib_qp_attr qp_attr;

 memset(&qp_attr, 0, sizeof(qp_attr));
 qp_attr.qp_state = IB_QPS_RESET;
 return ib_modify_qp(lnk->roce_qp, &qp_attr, IB_QP_STATE);
}

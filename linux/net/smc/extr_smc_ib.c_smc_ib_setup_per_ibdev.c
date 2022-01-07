
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_ib_device {int initialized; int * roce_cq_send; int * roce_cq_recv; int ibdev; } ;
struct ib_cq_init_attr {int cqe; int comp_vector; } ;


 scalar_t__ IS_ERR (int *) ;
 int MAX_ORDER ;
 int PAGE_SIZE ;
 long PTR_ERR_OR_ZERO (int *) ;
 int SMC_MAX_CQE ;
 int cache_line_size () ;
 void* ib_create_cq (int ,int ,int *,struct smc_ib_device*,struct ib_cq_init_attr*) ;
 int ib_destroy_cq (int *) ;
 int smc_wr_add_dev (struct smc_ib_device*) ;
 int smc_wr_rx_cq_handler ;
 int smc_wr_tx_cq_handler ;

long smc_ib_setup_per_ibdev(struct smc_ib_device *smcibdev)
{
 struct ib_cq_init_attr cqattr = {
  .cqe = SMC_MAX_CQE, .comp_vector = 0 };
 int cqe_size_order, smc_order;
 long rc;


 cqe_size_order = cache_line_size() == 128 ? 7 : 6;
 smc_order = MAX_ORDER - cqe_size_order - 1;
 if (SMC_MAX_CQE + 2 > (0x00000001 << smc_order) * PAGE_SIZE)
  cqattr.cqe = (0x00000001 << smc_order) * PAGE_SIZE - 2;
 smcibdev->roce_cq_send = ib_create_cq(smcibdev->ibdev,
           smc_wr_tx_cq_handler, ((void*)0),
           smcibdev, &cqattr);
 rc = PTR_ERR_OR_ZERO(smcibdev->roce_cq_send);
 if (IS_ERR(smcibdev->roce_cq_send)) {
  smcibdev->roce_cq_send = ((void*)0);
  return rc;
 }
 smcibdev->roce_cq_recv = ib_create_cq(smcibdev->ibdev,
           smc_wr_rx_cq_handler, ((void*)0),
           smcibdev, &cqattr);
 rc = PTR_ERR_OR_ZERO(smcibdev->roce_cq_recv);
 if (IS_ERR(smcibdev->roce_cq_recv)) {
  smcibdev->roce_cq_recv = ((void*)0);
  goto err;
 }
 smc_wr_add_dev(smcibdev);
 smcibdev->initialized = 1;
 return rc;

err:
 ib_destroy_cq(smcibdev->roce_cq_send);
 return rc;
}

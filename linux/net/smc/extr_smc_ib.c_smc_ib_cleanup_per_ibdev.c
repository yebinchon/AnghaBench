
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_ib_device {int roce_cq_send; int roce_cq_recv; scalar_t__ initialized; } ;


 int ib_destroy_cq (int ) ;
 int smc_wr_remove_dev (struct smc_ib_device*) ;

__attribute__((used)) static void smc_ib_cleanup_per_ibdev(struct smc_ib_device *smcibdev)
{
 if (!smcibdev->initialized)
  return;
 smcibdev->initialized = 0;
 smc_wr_remove_dev(smcibdev);
 ib_destroy_cq(smcibdev->roce_cq_recv);
 ib_destroy_cq(smcibdev->roce_cq_send);
}

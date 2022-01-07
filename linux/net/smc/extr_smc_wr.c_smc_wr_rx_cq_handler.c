
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_ib_device {int recv_tasklet; } ;
struct ib_cq {int dummy; } ;


 int tasklet_schedule (int *) ;

void smc_wr_rx_cq_handler(struct ib_cq *ib_cq, void *cq_context)
{
 struct smc_ib_device *dev = (struct smc_ib_device *)cq_context;

 tasklet_schedule(&dev->recv_tasklet);
}

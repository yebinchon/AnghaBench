
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_ib_device {int send_tasklet; int recv_tasklet; } ;


 int smc_wr_rx_tasklet_fn ;
 int smc_wr_tx_tasklet_fn ;
 int tasklet_init (int *,int ,unsigned long) ;

void smc_wr_add_dev(struct smc_ib_device *smcibdev)
{
 tasklet_init(&smcibdev->recv_tasklet, smc_wr_rx_tasklet_fn,
       (unsigned long)smcibdev);
 tasklet_init(&smcibdev->send_tasklet, smc_wr_tx_tasklet_fn,
       (unsigned long)smcibdev);
}

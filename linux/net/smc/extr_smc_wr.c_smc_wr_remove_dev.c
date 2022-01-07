
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_ib_device {int send_tasklet; int recv_tasklet; } ;


 int tasklet_kill (int *) ;

void smc_wr_remove_dev(struct smc_ib_device *smcibdev)
{
 tasklet_kill(&smcibdev->recv_tasklet);
 tasklet_kill(&smcibdev->send_tasklet);
}

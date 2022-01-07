
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_connection {int rx_tsklet; } ;


 int smcd_cdc_rx_tsklet ;
 int tasklet_init (int *,int ,unsigned long) ;

void smcd_cdc_rx_init(struct smc_connection *conn)
{
 tasklet_init(&conn->rx_tsklet, smcd_cdc_rx_tsklet, (unsigned long)conn);
}

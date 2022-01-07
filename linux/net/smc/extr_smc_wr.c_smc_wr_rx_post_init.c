
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct smc_link {scalar_t__ wr_rx_cnt; } ;


 int smc_wr_rx_post (struct smc_link*) ;

int smc_wr_rx_post_init(struct smc_link *link)
{
 u32 i;
 int rc = 0;

 for (i = 0; i < link->wr_rx_cnt; i++)
  rc = smc_wr_rx_post(link);
 return rc;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_connection {scalar_t__ rtoken_idx; int lgr; } ;
struct smc_clc_msg_accept_confirm {int rmb_rkey; int rmb_dma_addr; } ;


 scalar_t__ smc_rtoken_add (int ,int ,int ) ;

int smc_rmb_rtoken_handling(struct smc_connection *conn,
       struct smc_clc_msg_accept_confirm *clc)
{
 conn->rtoken_idx = smc_rtoken_add(conn->lgr, clc->rmb_dma_addr,
       clc->rmb_rkey);
 if (conn->rtoken_idx < 0)
  return conn->rtoken_idx;
 return 0;
}

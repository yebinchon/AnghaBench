
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_link {scalar_t__ peer_qpn; } ;


 int smc_ib_dealloc_protection_domain (struct smc_link*) ;
 int smc_ib_destroy_queue_pair (struct smc_link*) ;
 int smc_ib_modify_qp_reset (struct smc_link*) ;
 int smc_llc_link_clear (struct smc_link*) ;
 int smc_wr_free_link (struct smc_link*) ;
 int smc_wr_free_link_mem (struct smc_link*) ;

__attribute__((used)) static void smc_link_clear(struct smc_link *lnk)
{
 lnk->peer_qpn = 0;
 smc_llc_link_clear(lnk);
 smc_ib_modify_qp_reset(lnk);
 smc_wr_free_link(lnk);
 smc_ib_destroy_queue_pair(lnk);
 smc_ib_dealloc_protection_domain(lnk);
 smc_wr_free_link_mem(lnk);
}

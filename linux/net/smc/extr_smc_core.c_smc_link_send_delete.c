
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_link {scalar_t__ state; } ;


 int ENOTCONN ;
 int SMC_LLC_REQ ;
 scalar_t__ SMC_LNK_ACTIVE ;
 int smc_llc_link_deleting (struct smc_link*) ;
 int smc_llc_send_delete_link (struct smc_link*,int ,int) ;

__attribute__((used)) static int smc_link_send_delete(struct smc_link *lnk)
{
 if (lnk->state == SMC_LNK_ACTIVE &&
     !smc_llc_send_delete_link(lnk, SMC_LLC_REQ, 1)) {
  smc_llc_link_deleting(lnk);
  return 0;
 }
 return -ENOTCONN;
}

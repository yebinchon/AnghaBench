
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_link {int dummy; } ;
struct smc_buf_desc {int wr_reg; int regerr; int * mr_rx; } ;


 int EFAULT ;
 size_t SMC_SINGLE_LINK ;
 scalar_t__ smc_llc_do_confirm_rkey (struct smc_link*,struct smc_buf_desc*) ;
 scalar_t__ smc_wr_reg_send (struct smc_link*,int ) ;

__attribute__((used)) static int smc_reg_rmb(struct smc_link *link, struct smc_buf_desc *rmb_desc,
         bool conf_rkey)
{
 if (!rmb_desc->wr_reg) {

  if (smc_wr_reg_send(link, rmb_desc->mr_rx[SMC_SINGLE_LINK])) {
   rmb_desc->regerr = 1;
   return -EFAULT;
  }
  rmb_desc->wr_reg = 1;
 }
 if (!conf_rkey)
  return 0;

 if (smc_llc_do_confirm_rkey(link, rmb_desc)) {
  rmb_desc->regerr = 1;
  return -EFAULT;
 }
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_link {scalar_t__ llc_confirm_rkey_rc; int llc_confirm_rkey; } ;
struct smc_buf_desc {int dummy; } ;


 int EFAULT ;
 int SMC_LLC_WAIT_TIME ;
 int reinit_completion (int *) ;
 int smc_llc_send_confirm_rkey (struct smc_link*,struct smc_buf_desc*) ;
 int wait_for_completion_interruptible_timeout (int *,int ) ;

int smc_llc_do_confirm_rkey(struct smc_link *link,
       struct smc_buf_desc *rmb_desc)
{
 int rc;


 reinit_completion(&link->llc_confirm_rkey);
 rc = smc_llc_send_confirm_rkey(link, rmb_desc);
 if (rc)
  return rc;

 rc = wait_for_completion_interruptible_timeout(&link->llc_confirm_rkey,
             SMC_LLC_WAIT_TIME);
 if (rc <= 0 || link->llc_confirm_rkey_rc)
  return -EFAULT;
 return 0;
}

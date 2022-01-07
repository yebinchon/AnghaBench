
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_link {int llc_delete_rkey_mutex; scalar_t__ llc_delete_rkey_rc; int llc_delete_rkey; } ;
struct smc_buf_desc {int dummy; } ;


 int EFAULT ;
 int SMC_LLC_WAIT_TIME ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reinit_completion (int *) ;
 int smc_llc_send_delete_rkey (struct smc_link*,struct smc_buf_desc*) ;
 int wait_for_completion_interruptible_timeout (int *,int ) ;

int smc_llc_do_delete_rkey(struct smc_link *link,
      struct smc_buf_desc *rmb_desc)
{
 int rc;

 mutex_lock(&link->llc_delete_rkey_mutex);
 reinit_completion(&link->llc_delete_rkey);
 rc = smc_llc_send_delete_rkey(link, rmb_desc);
 if (rc)
  goto out;

 rc = wait_for_completion_interruptible_timeout(&link->llc_delete_rkey,
             SMC_LLC_WAIT_TIME);
 if (rc <= 0 || link->llc_delete_rkey_rc)
  rc = -EFAULT;
 else
  rc = 0;
out:
 mutex_unlock(&link->llc_delete_rkey_mutex);
 return rc;
}

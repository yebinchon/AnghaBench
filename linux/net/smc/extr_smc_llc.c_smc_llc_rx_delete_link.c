
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct smc_llc_msg_del_link {TYPE_1__ hd; } ;
struct smc_link_group {scalar_t__ role; } ;
struct smc_link {int dummy; } ;


 int SMC_LLC_FLAG_RESP ;
 int SMC_LLC_REQ ;
 int SMC_LLC_RESP ;
 scalar_t__ SMC_SERV ;
 struct smc_link_group* smc_get_lgr (struct smc_link*) ;
 int smc_lgr_forget (struct smc_link_group*) ;
 int smc_lgr_schedule_free_work_fast (struct smc_link_group*) ;
 int smc_llc_link_deleting (struct smc_link*) ;
 int smc_llc_prep_delete_link (struct smc_llc_msg_del_link*,struct smc_link*,int ,int) ;
 int smc_llc_send_message (struct smc_link*,struct smc_llc_msg_del_link*,int) ;

__attribute__((used)) static void smc_llc_rx_delete_link(struct smc_link *link,
       struct smc_llc_msg_del_link *llc)
{
 struct smc_link_group *lgr = smc_get_lgr(link);

 if (llc->hd.flags & SMC_LLC_FLAG_RESP) {
  if (lgr->role == SMC_SERV)
   smc_lgr_schedule_free_work_fast(lgr);
 } else {
  smc_lgr_forget(lgr);
  smc_llc_link_deleting(link);
  if (lgr->role == SMC_SERV) {

   smc_llc_prep_delete_link(llc, link, SMC_LLC_REQ, 1);
  } else {

   smc_llc_prep_delete_link(llc, link, SMC_LLC_RESP, 1);
  }
  smc_llc_send_message(link, llc, sizeof(*llc));
  smc_lgr_schedule_free_work_fast(lgr);
 }
}

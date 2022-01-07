
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct smc_llc_msg_confirm_rkey_cont {TYPE_1__ hd; } ;
struct smc_link {int dummy; } ;


 int SMC_LLC_FLAG_RESP ;
 int smc_llc_send_message (struct smc_link*,struct smc_llc_msg_confirm_rkey_cont*,int) ;

__attribute__((used)) static void smc_llc_rx_confirm_rkey_cont(struct smc_link *link,
          struct smc_llc_msg_confirm_rkey_cont *llc)
{
 if (llc->hd.flags & SMC_LLC_FLAG_RESP) {

 } else {

  llc->hd.flags |= SMC_LLC_FLAG_RESP;
  smc_llc_send_message(link, llc, sizeof(*llc));
 }
}

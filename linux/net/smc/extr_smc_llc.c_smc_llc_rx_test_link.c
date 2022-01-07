
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct smc_llc_msg_test_link {TYPE_1__ hd; } ;
struct smc_link {scalar_t__ state; int llc_testlink_resp; } ;


 int SMC_LLC_FLAG_RESP ;
 scalar_t__ SMC_LNK_ACTIVE ;
 int complete (int *) ;
 int smc_llc_send_message (struct smc_link*,struct smc_llc_msg_test_link*,int) ;

__attribute__((used)) static void smc_llc_rx_test_link(struct smc_link *link,
     struct smc_llc_msg_test_link *llc)
{
 if (llc->hd.flags & SMC_LLC_FLAG_RESP) {
  if (link->state == SMC_LNK_ACTIVE)
   complete(&link->llc_testlink_resp);
 } else {
  llc->hd.flags |= SMC_LLC_FLAG_RESP;
  smc_llc_send_message(link, llc, sizeof(*llc));
 }
}

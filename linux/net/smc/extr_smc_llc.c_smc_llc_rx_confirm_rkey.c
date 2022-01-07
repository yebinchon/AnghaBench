
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
struct smc_llc_msg_confirm_rkey {TYPE_2__ hd; TYPE_1__* rtoken; } ;
struct smc_link {int llc_confirm_rkey_rc; int llc_confirm_rkey; } ;
struct TYPE_3__ {int rmb_key; int rmb_vaddr; } ;


 int SMC_LLC_FLAG_RESP ;
 int SMC_LLC_FLAG_RKEY_NEG ;
 int complete (int *) ;
 int smc_get_lgr (struct smc_link*) ;
 int smc_llc_send_message (struct smc_link*,struct smc_llc_msg_confirm_rkey*,int) ;
 int smc_rtoken_add (int ,int ,int ) ;

__attribute__((used)) static void smc_llc_rx_confirm_rkey(struct smc_link *link,
        struct smc_llc_msg_confirm_rkey *llc)
{
 int rc;

 if (llc->hd.flags & SMC_LLC_FLAG_RESP) {
  link->llc_confirm_rkey_rc = llc->hd.flags &
         SMC_LLC_FLAG_RKEY_NEG;
  complete(&link->llc_confirm_rkey);
 } else {
  rc = smc_rtoken_add(smc_get_lgr(link),
        llc->rtoken[0].rmb_vaddr,
        llc->rtoken[0].rmb_key);



  llc->hd.flags |= SMC_LLC_FLAG_RESP;
  if (rc < 0)
   llc->hd.flags |= SMC_LLC_FLAG_RKEY_NEG;
  smc_llc_send_message(link, llc, sizeof(*llc));
 }
}

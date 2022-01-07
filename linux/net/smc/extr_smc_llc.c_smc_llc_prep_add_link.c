
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int type; } ;
struct TYPE_4__ {int length; int add_link_rej_rsn; int flags; TYPE_1__ common; } ;
struct smc_llc_msg_add_link {int sender_gid; int sender_mac; TYPE_2__ hd; } ;
struct smc_link {int dummy; } ;
typedef enum smc_llc_reqresp { ____Placeholder_smc_llc_reqresp } smc_llc_reqresp ;


 int ETH_ALEN ;
 int SMC_GID_SIZE ;
 int SMC_LLC_ADD_LINK ;
 int SMC_LLC_FLAG_ADD_LNK_REJ ;
 int SMC_LLC_FLAG_RESP ;
 int SMC_LLC_REJ_RSN_NO_ALT_PATH ;
 int SMC_LLC_RESP ;
 int memcpy (int ,int *,int ) ;
 int memset (struct smc_llc_msg_add_link*,int ,int) ;

__attribute__((used)) static void smc_llc_prep_add_link(struct smc_llc_msg_add_link *addllc,
      struct smc_link *link, u8 mac[], u8 gid[],
      enum smc_llc_reqresp reqresp)
{
 memset(addllc, 0, sizeof(*addllc));
 addllc->hd.common.type = SMC_LLC_ADD_LINK;
 addllc->hd.length = sizeof(struct smc_llc_msg_add_link);
 if (reqresp == SMC_LLC_RESP) {
  addllc->hd.flags |= SMC_LLC_FLAG_RESP;

  addllc->hd.flags |= SMC_LLC_FLAG_ADD_LNK_REJ;
  addllc->hd.add_link_rej_rsn = SMC_LLC_REJ_RSN_NO_ALT_PATH;
 }
 memcpy(addllc->sender_mac, mac, ETH_ALEN);
 memcpy(addllc->sender_gid, gid, SMC_GID_SIZE);
}

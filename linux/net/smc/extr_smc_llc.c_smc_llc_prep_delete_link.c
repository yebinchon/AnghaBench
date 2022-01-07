
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; } ;
struct TYPE_4__ {int length; int flags; TYPE_1__ common; } ;
struct smc_llc_msg_del_link {int link_num; TYPE_2__ hd; } ;
struct smc_llc_msg_add_link {int dummy; } ;
struct smc_link {int link_id; } ;
typedef enum smc_llc_reqresp { ____Placeholder_smc_llc_reqresp } smc_llc_reqresp ;


 int SMC_LLC_DELETE_LINK ;
 int SMC_LLC_FLAG_DEL_LINK_ALL ;
 int SMC_LLC_FLAG_DEL_LINK_ORDERLY ;
 int SMC_LLC_FLAG_RESP ;
 int SMC_LLC_RESP ;
 int memset (struct smc_llc_msg_del_link*,int ,int) ;

__attribute__((used)) static void smc_llc_prep_delete_link(struct smc_llc_msg_del_link *delllc,
         struct smc_link *link,
         enum smc_llc_reqresp reqresp, bool orderly)
{
 memset(delllc, 0, sizeof(*delllc));
 delllc->hd.common.type = SMC_LLC_DELETE_LINK;
 delllc->hd.length = sizeof(struct smc_llc_msg_add_link);
 if (reqresp == SMC_LLC_RESP)
  delllc->hd.flags |= SMC_LLC_FLAG_RESP;

 delllc->hd.flags |= SMC_LLC_FLAG_DEL_LINK_ALL;
 if (orderly)
  delllc->hd.flags |= SMC_LLC_FLAG_DEL_LINK_ORDERLY;
 delllc->link_num = link->link_id;
}

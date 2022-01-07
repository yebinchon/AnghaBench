
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct smc_wr_tx_pend_priv {int dummy; } ;
struct smc_wr_buf {int dummy; } ;
struct TYPE_4__ {int type; } ;
struct TYPE_5__ {int length; TYPE_1__ common; } ;
struct smc_llc_msg_delete_rkey {int num_rkeys; int * rkey; TYPE_2__ hd; } ;
struct smc_link {int dummy; } ;
struct smc_buf_desc {TYPE_3__** mr_rx; } ;
struct TYPE_6__ {int rkey; } ;


 int SMC_LLC_DELETE_RKEY ;
 size_t SMC_SINGLE_LINK ;
 int htonl (int ) ;
 int memset (struct smc_llc_msg_delete_rkey*,int ,int) ;
 int smc_llc_add_pending_send (struct smc_link*,struct smc_wr_buf**,struct smc_wr_tx_pend_priv**) ;
 int smc_wr_tx_send (struct smc_link*,struct smc_wr_tx_pend_priv*) ;

__attribute__((used)) static int smc_llc_send_delete_rkey(struct smc_link *link,
        struct smc_buf_desc *rmb_desc)
{
 struct smc_llc_msg_delete_rkey *rkeyllc;
 struct smc_wr_tx_pend_priv *pend;
 struct smc_wr_buf *wr_buf;
 int rc;

 rc = smc_llc_add_pending_send(link, &wr_buf, &pend);
 if (rc)
  return rc;
 rkeyllc = (struct smc_llc_msg_delete_rkey *)wr_buf;
 memset(rkeyllc, 0, sizeof(*rkeyllc));
 rkeyllc->hd.common.type = SMC_LLC_DELETE_RKEY;
 rkeyllc->hd.length = sizeof(struct smc_llc_msg_delete_rkey);
 rkeyllc->num_rkeys = 1;
 rkeyllc->rkey[0] = htonl(rmb_desc->mr_rx[SMC_SINGLE_LINK]->rkey);

 rc = smc_wr_tx_send(link, pend);
 return rc;
}

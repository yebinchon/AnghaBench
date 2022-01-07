
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct smc_wr_tx_pend_priv {int dummy; } ;
struct smc_wr_buf {int dummy; } ;
struct TYPE_4__ {int type; } ;
struct TYPE_3__ {int length; TYPE_2__ common; } ;
struct smc_llc_msg_test_link {int user_data; TYPE_1__ hd; } ;
struct smc_link {int dummy; } ;


 int SMC_LLC_TEST_LINK ;
 int memcpy (int ,int *,int) ;
 int memset (struct smc_llc_msg_test_link*,int ,int) ;
 int smc_llc_add_pending_send (struct smc_link*,struct smc_wr_buf**,struct smc_wr_tx_pend_priv**) ;
 int smc_wr_tx_send (struct smc_link*,struct smc_wr_tx_pend_priv*) ;

__attribute__((used)) static int smc_llc_send_test_link(struct smc_link *link, u8 user_data[16])
{
 struct smc_llc_msg_test_link *testllc;
 struct smc_wr_tx_pend_priv *pend;
 struct smc_wr_buf *wr_buf;
 int rc;

 rc = smc_llc_add_pending_send(link, &wr_buf, &pend);
 if (rc)
  return rc;
 testllc = (struct smc_llc_msg_test_link *)wr_buf;
 memset(testllc, 0, sizeof(*testllc));
 testllc->hd.common.type = SMC_LLC_TEST_LINK;
 testllc->hd.length = sizeof(struct smc_llc_msg_test_link);
 memcpy(testllc->user_data, user_data, sizeof(testllc->user_data));

 rc = smc_wr_tx_send(link, pend);
 return rc;
}

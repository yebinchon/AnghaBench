
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int type; } ;
struct TYPE_7__ {int length; TYPE_2__ common; } ;
struct TYPE_8__ {TYPE_3__ hdr; } ;
union smc_llc_msg {int delete_rkey; int confirm_rkey_cont; int confirm_rkey; int delete_link; int add_link; int confirm_link; int test_link; TYPE_4__ raw; } ;
struct smc_link {scalar_t__ state; } ;
struct ib_wc {int byte_len; TYPE_1__* qp; } ;
struct TYPE_5__ {scalar_t__ qp_context; } ;
 scalar_t__ SMC_LNK_INACTIVE ;
 int smc_llc_rx_add_link (struct smc_link*,int *) ;
 int smc_llc_rx_confirm_link (struct smc_link*,int *) ;
 int smc_llc_rx_confirm_rkey (struct smc_link*,int *) ;
 int smc_llc_rx_confirm_rkey_cont (struct smc_link*,int *) ;
 int smc_llc_rx_delete_link (struct smc_link*,int *) ;
 int smc_llc_rx_delete_rkey (struct smc_link*,int *) ;
 int smc_llc_rx_test_link (struct smc_link*,int *) ;

__attribute__((used)) static void smc_llc_rx_handler(struct ib_wc *wc, void *buf)
{
 struct smc_link *link = (struct smc_link *)wc->qp->qp_context;
 union smc_llc_msg *llc = buf;

 if (wc->byte_len < sizeof(*llc))
  return;
 if (llc->raw.hdr.length != sizeof(*llc))
  return;
 if (link->state == SMC_LNK_INACTIVE)
  return;

 switch (llc->raw.hdr.common.type) {
 case 128:
  smc_llc_rx_test_link(link, &llc->test_link);
  break;
 case 133:
  smc_llc_rx_confirm_link(link, &llc->confirm_link);
  break;
 case 134:
  smc_llc_rx_add_link(link, &llc->add_link);
  break;
 case 130:
  smc_llc_rx_delete_link(link, &llc->delete_link);
  break;
 case 132:
  smc_llc_rx_confirm_rkey(link, &llc->confirm_rkey);
  break;
 case 131:
  smc_llc_rx_confirm_rkey_cont(link, &llc->confirm_rkey_cont);
  break;
 case 129:
  smc_llc_rx_delete_rkey(link, &llc->delete_rkey);
  break;
 }
}

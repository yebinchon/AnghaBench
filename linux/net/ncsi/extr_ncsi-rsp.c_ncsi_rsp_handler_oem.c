
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ncsi_rsp_oem_pkt {int mfr_id; } ;
struct ncsi_rsp_oem_handler {unsigned int mfr_id; int (* handler ) (struct ncsi_request*) ;} ;
struct ncsi_request {TYPE_2__* ndp; int rsp; } ;
struct TYPE_3__ {int dev; } ;
struct TYPE_4__ {TYPE_1__ ndev; } ;


 unsigned int ARRAY_SIZE (struct ncsi_rsp_oem_handler*) ;
 int ENOENT ;
 struct ncsi_rsp_oem_handler* ncsi_rsp_oem_handlers ;
 int netdev_err (int ,char*,unsigned int) ;
 unsigned int ntohl (int ) ;
 scalar_t__ skb_network_header (int ) ;
 int stub1 (struct ncsi_request*) ;

__attribute__((used)) static int ncsi_rsp_handler_oem(struct ncsi_request *nr)
{
 struct ncsi_rsp_oem_handler *nrh = ((void*)0);
 struct ncsi_rsp_oem_pkt *rsp;
 unsigned int mfr_id, i;


 rsp = (struct ncsi_rsp_oem_pkt *)skb_network_header(nr->rsp);
 mfr_id = ntohl(rsp->mfr_id);


 for (i = 0; i < ARRAY_SIZE(ncsi_rsp_oem_handlers); i++) {
  if (ncsi_rsp_oem_handlers[i].mfr_id == mfr_id) {
   if (ncsi_rsp_oem_handlers[i].handler)
    nrh = &ncsi_rsp_oem_handlers[i];
   else
    nrh = ((void*)0);

   break;
  }
 }

 if (!nrh) {
  netdev_err(nr->ndp->ndev.dev, "Received unrecognized OEM packet with MFR-ID (0x%x)\n",
      mfr_id);
  return -ENOENT;
 }


 return nrh->handler(nr);
}

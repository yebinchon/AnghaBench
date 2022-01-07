
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int channel; } ;
struct TYPE_4__ {TYPE_1__ common; } ;
struct ncsi_rsp_pkt {TYPE_2__ rsp; } ;
struct ncsi_request {int rsp; struct ncsi_dev_priv* ndp; } ;
struct ncsi_package {int dummy; } ;
struct ncsi_dev_priv {int flags; } ;


 int ENODEV ;
 int ENXIO ;
 int NCSI_DEV_PROBED ;
 unsigned char NCSI_PACKAGE_INDEX (int ) ;
 struct ncsi_package* ncsi_add_package (struct ncsi_dev_priv*,unsigned char) ;
 int ncsi_find_package_and_channel (struct ncsi_dev_priv*,int ,struct ncsi_package**,int *) ;
 scalar_t__ skb_network_header (int ) ;

__attribute__((used)) static int ncsi_rsp_handler_sp(struct ncsi_request *nr)
{
 struct ncsi_rsp_pkt *rsp;
 struct ncsi_dev_priv *ndp = nr->ndp;
 struct ncsi_package *np;
 unsigned char id;




 rsp = (struct ncsi_rsp_pkt *)skb_network_header(nr->rsp);
 ncsi_find_package_and_channel(ndp, rsp->rsp.common.channel,
          &np, ((void*)0));
 if (!np) {
  if (ndp->flags & NCSI_DEV_PROBED)
   return -ENXIO;

  id = NCSI_PACKAGE_INDEX(rsp->rsp.common.channel);
  np = ncsi_add_package(ndp, id);
  if (!np)
   return -ENODEV;
 }

 return 0;
}

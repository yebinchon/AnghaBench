
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
struct ncsi_channel {int dummy; } ;


 int ENODEV ;
 int ENXIO ;
 unsigned char NCSI_CHANNEL_INDEX (int ) ;
 int NCSI_DEV_PROBED ;
 struct ncsi_channel* ncsi_add_channel (struct ncsi_package*,unsigned char) ;
 int ncsi_find_package_and_channel (struct ncsi_dev_priv*,int ,struct ncsi_package**,struct ncsi_channel**) ;
 scalar_t__ skb_network_header (int ) ;

__attribute__((used)) static int ncsi_rsp_handler_cis(struct ncsi_request *nr)
{
 struct ncsi_rsp_pkt *rsp;
 struct ncsi_dev_priv *ndp = nr->ndp;
 struct ncsi_package *np;
 struct ncsi_channel *nc;
 unsigned char id;

 rsp = (struct ncsi_rsp_pkt *)skb_network_header(nr->rsp);
 ncsi_find_package_and_channel(ndp, rsp->rsp.common.channel, &np, &nc);
 if (!nc) {
  if (ndp->flags & NCSI_DEV_PROBED)
   return -ENXIO;

  id = NCSI_CHANNEL_INDEX(rsp->rsp.common.channel);
  nc = ncsi_add_channel(np, id);
 }

 return nc ? 0 : -ENODEV;
}


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
struct ncsi_dev_priv {int dummy; } ;
struct ncsi_channel {int dummy; } ;


 int ENODEV ;
 int ncsi_find_package_and_channel (struct ncsi_dev_priv*,int ,struct ncsi_package**,struct ncsi_channel**) ;
 int ncsi_send_netlink_rsp (struct ncsi_request*,struct ncsi_package*,struct ncsi_channel*) ;
 scalar_t__ skb_network_header (int ) ;

__attribute__((used)) static int ncsi_rsp_handler_netlink(struct ncsi_request *nr)
{
 struct ncsi_dev_priv *ndp = nr->ndp;
 struct ncsi_rsp_pkt *rsp;
 struct ncsi_package *np;
 struct ncsi_channel *nc;
 int ret;


 rsp = (struct ncsi_rsp_pkt *)skb_network_header(nr->rsp);
 ncsi_find_package_and_channel(ndp, rsp->rsp.common.channel,
          &np, &nc);
 if (!np)
  return -ENODEV;

 ret = ncsi_send_netlink_rsp(nr, np, nc);

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int channel; } ;
struct TYPE_4__ {TYPE_1__ common; } ;
struct ncsi_rsp_gpuuid_pkt {int uuid; TYPE_2__ rsp; } ;
struct ncsi_request {int rsp; struct ncsi_dev_priv* ndp; } ;
struct ncsi_package {int uuid; } ;
struct ncsi_dev_priv {int dummy; } ;


 int ENODEV ;
 int memcpy (int ,int ,int) ;
 int ncsi_find_package_and_channel (struct ncsi_dev_priv*,int ,struct ncsi_package**,int *) ;
 scalar_t__ skb_network_header (int ) ;

__attribute__((used)) static int ncsi_rsp_handler_gpuuid(struct ncsi_request *nr)
{
 struct ncsi_rsp_gpuuid_pkt *rsp;
 struct ncsi_dev_priv *ndp = nr->ndp;
 struct ncsi_package *np;


 rsp = (struct ncsi_rsp_gpuuid_pkt *)skb_network_header(nr->rsp);
 ncsi_find_package_and_channel(ndp, rsp->rsp.common.channel,
          &np, ((void*)0));
 if (!np)
  return -ENODEV;

 memcpy(np->uuid, rsp->uuid, sizeof(rsp->uuid));

 return 0;
}

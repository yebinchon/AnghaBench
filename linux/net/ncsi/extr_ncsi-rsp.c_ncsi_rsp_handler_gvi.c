
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int channel; } ;
struct TYPE_4__ {TYPE_1__ common; } ;
struct ncsi_rsp_gvi_pkt {int mf_id; int * pci_ids; int fw_version; int fw_name; int alpha2; int ncsi_version; TYPE_2__ rsp; } ;
struct ncsi_request {int rsp; struct ncsi_dev_priv* ndp; } ;
struct ncsi_dev_priv {int dummy; } ;
struct ncsi_channel_version {void* mf_id; int * pci_ids; void* fw_version; int fw_name; int alpha2; void* version; } ;
struct ncsi_channel {struct ncsi_channel_version version; } ;


 int ARRAY_SIZE (int *) ;
 int ENODEV ;
 int memcpy (int ,int ,int) ;
 int ncsi_find_package_and_channel (struct ncsi_dev_priv*,int ,int *,struct ncsi_channel**) ;
 void* ntohl (int ) ;
 int ntohs (int ) ;
 scalar_t__ skb_network_header (int ) ;

__attribute__((used)) static int ncsi_rsp_handler_gvi(struct ncsi_request *nr)
{
 struct ncsi_rsp_gvi_pkt *rsp;
 struct ncsi_dev_priv *ndp = nr->ndp;
 struct ncsi_channel *nc;
 struct ncsi_channel_version *ncv;
 int i;


 rsp = (struct ncsi_rsp_gvi_pkt *)skb_network_header(nr->rsp);
 ncsi_find_package_and_channel(ndp, rsp->rsp.common.channel,
          ((void*)0), &nc);
 if (!nc)
  return -ENODEV;


 ncv = &nc->version;
 ncv->version = ntohl(rsp->ncsi_version);
 ncv->alpha2 = rsp->alpha2;
 memcpy(ncv->fw_name, rsp->fw_name, 12);
 ncv->fw_version = ntohl(rsp->fw_version);
 for (i = 0; i < ARRAY_SIZE(ncv->pci_ids); i++)
  ncv->pci_ids[i] = ntohs(rsp->pci_ids[i]);
 ncv->mf_id = ntohl(rsp->mf_id);

 return 0;
}

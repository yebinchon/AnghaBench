
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int channel; } ;
struct TYPE_4__ {TYPE_1__ common; } ;
struct ncsi_rsp_pkt {TYPE_2__ rsp; } ;
struct ncsi_request {int cmd; int rsp; struct ncsi_dev_priv* ndp; } ;
struct ncsi_dev_priv {int dummy; } ;
struct ncsi_cmd_sl_pkt {int oem_mode; int mode; } ;
struct ncsi_channel_mode {void** data; } ;
struct ncsi_channel {struct ncsi_channel_mode* modes; } ;


 int ENODEV ;
 size_t NCSI_MODE_LINK ;
 int ncsi_find_package_and_channel (struct ncsi_dev_priv*,int ,int *,struct ncsi_channel**) ;
 void* ntohl (int ) ;
 scalar_t__ skb_network_header (int ) ;

__attribute__((used)) static int ncsi_rsp_handler_sl(struct ncsi_request *nr)
{
 struct ncsi_cmd_sl_pkt *cmd;
 struct ncsi_rsp_pkt *rsp;
 struct ncsi_dev_priv *ndp = nr->ndp;
 struct ncsi_channel *nc;
 struct ncsi_channel_mode *ncm;


 rsp = (struct ncsi_rsp_pkt *)skb_network_header(nr->rsp);
 ncsi_find_package_and_channel(ndp, rsp->rsp.common.channel,
          ((void*)0), &nc);
 if (!nc)
  return -ENODEV;

 cmd = (struct ncsi_cmd_sl_pkt *)skb_network_header(nr->cmd);
 ncm = &nc->modes[NCSI_MODE_LINK];
 ncm->data[0] = ntohl(cmd->mode);
 ncm->data[1] = ntohl(cmd->oem_mode);

 return 0;
}

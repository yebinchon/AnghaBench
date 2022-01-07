
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
struct ncsi_cmd_sma_pkt {int at_e; int index; int mac; } ;
struct ncsi_channel_mac_filter {int n_uc; int n_mc; int n_mixed; int * addrs; int bitmap; } ;
struct ncsi_channel {int lock; struct ncsi_channel_mac_filter mac_filter; } ;


 int ENODEV ;
 int ERANGE ;
 int ETH_ALEN ;
 int clear_bit (int,void*) ;
 int memcpy (int *,int ,int) ;
 int memset (int *,int ,int) ;
 int ncsi_find_package_and_channel (struct ncsi_dev_priv*,int ,int *,struct ncsi_channel**) ;
 int set_bit (int,void*) ;
 scalar_t__ skb_network_header (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ncsi_rsp_handler_sma(struct ncsi_request *nr)
{
 struct ncsi_cmd_sma_pkt *cmd;
 struct ncsi_rsp_pkt *rsp;
 struct ncsi_dev_priv *ndp = nr->ndp;
 struct ncsi_channel *nc;
 struct ncsi_channel_mac_filter *ncf;
 unsigned long flags;
 void *bitmap;
 bool enabled;
 int index;



 rsp = (struct ncsi_rsp_pkt *)skb_network_header(nr->rsp);
 ncsi_find_package_and_channel(ndp, rsp->rsp.common.channel,
          ((void*)0), &nc);
 if (!nc)
  return -ENODEV;




 cmd = (struct ncsi_cmd_sma_pkt *)skb_network_header(nr->cmd);
 enabled = cmd->at_e & 0x1;
 ncf = &nc->mac_filter;
 bitmap = &ncf->bitmap;

 if (cmd->index == 0 ||
     cmd->index > ncf->n_uc + ncf->n_mc + ncf->n_mixed)
  return -ERANGE;

 index = (cmd->index - 1) * ETH_ALEN;
 spin_lock_irqsave(&nc->lock, flags);
 if (enabled) {
  set_bit(cmd->index - 1, bitmap);
  memcpy(&ncf->addrs[index], cmd->mac, ETH_ALEN);
 } else {
  clear_bit(cmd->index - 1, bitmap);
  memset(&ncf->addrs[index], 0, ETH_ALEN);
 }
 spin_unlock_irqrestore(&nc->lock, flags);

 return 0;
}

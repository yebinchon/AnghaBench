
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
struct ncsi_cmd_svf_pkt {int index; int enable; int vlan; } ;
struct ncsi_channel_vlan_filter {int n_vids; scalar_t__* vids; int bitmap; } ;
struct ncsi_channel {int lock; struct ncsi_channel_vlan_filter vlan_filter; } ;


 int ENODEV ;
 int ERANGE ;
 int ncsi_find_package_and_channel (struct ncsi_dev_priv*,int ,int *,struct ncsi_channel**) ;
 scalar_t__ ntohs (int ) ;
 int set_bit (int,void*) ;
 scalar_t__ skb_network_header (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_and_clear_bit (int,void*) ;

__attribute__((used)) static int ncsi_rsp_handler_svf(struct ncsi_request *nr)
{
 struct ncsi_cmd_svf_pkt *cmd;
 struct ncsi_rsp_pkt *rsp;
 struct ncsi_dev_priv *ndp = nr->ndp;
 struct ncsi_channel *nc;
 struct ncsi_channel_vlan_filter *ncf;
 unsigned long flags;
 void *bitmap;


 rsp = (struct ncsi_rsp_pkt *)skb_network_header(nr->rsp);
 ncsi_find_package_and_channel(ndp, rsp->rsp.common.channel,
          ((void*)0), &nc);
 if (!nc)
  return -ENODEV;

 cmd = (struct ncsi_cmd_svf_pkt *)skb_network_header(nr->cmd);
 ncf = &nc->vlan_filter;
 if (cmd->index == 0 || cmd->index > ncf->n_vids)
  return -ERANGE;


 spin_lock_irqsave(&nc->lock, flags);
 bitmap = &ncf->bitmap;
 if (!(cmd->enable & 0x1)) {
  if (test_and_clear_bit(cmd->index - 1, bitmap))
   ncf->vids[cmd->index - 1] = 0;
 } else {
  set_bit(cmd->index - 1, bitmap);
  ncf->vids[cmd->index - 1] = ntohs(cmd->vlan);
 }
 spin_unlock_irqrestore(&nc->lock, flags);

 return 0;
}

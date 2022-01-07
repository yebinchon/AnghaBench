
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int channel; } ;
struct TYPE_5__ {TYPE_1__ common; } ;
struct ncsi_rsp_gls_pkt {int oem_status; int other; int status; TYPE_2__ rsp; } ;
struct ncsi_request {int flags; int rsp; struct ncsi_dev_priv* ndp; } ;
struct ncsi_dev_priv {int dummy; } ;
struct ncsi_channel_mode {void** data; } ;
struct TYPE_6__ {int state; } ;
struct ncsi_channel {int lock; TYPE_3__ monitor; struct ncsi_channel_mode* modes; } ;


 int ENODEV ;
 int NCSI_CHANNEL_MONITOR_START ;
 size_t NCSI_MODE_LINK ;
 int NCSI_REQ_FLAG_EVENT_DRIVEN ;
 int ncsi_find_package_and_channel (struct ncsi_dev_priv*,int ,int *,struct ncsi_channel**) ;
 void* ntohl (int ) ;
 scalar_t__ skb_network_header (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ncsi_rsp_handler_gls(struct ncsi_request *nr)
{
 struct ncsi_rsp_gls_pkt *rsp;
 struct ncsi_dev_priv *ndp = nr->ndp;
 struct ncsi_channel *nc;
 struct ncsi_channel_mode *ncm;
 unsigned long flags;


 rsp = (struct ncsi_rsp_gls_pkt *)skb_network_header(nr->rsp);
 ncsi_find_package_and_channel(ndp, rsp->rsp.common.channel,
          ((void*)0), &nc);
 if (!nc)
  return -ENODEV;

 ncm = &nc->modes[NCSI_MODE_LINK];
 ncm->data[2] = ntohl(rsp->status);
 ncm->data[3] = ntohl(rsp->other);
 ncm->data[4] = ntohl(rsp->oem_status);

 if (nr->flags & NCSI_REQ_FLAG_EVENT_DRIVEN)
  return 0;


 spin_lock_irqsave(&nc->lock, flags);
 nc->monitor.state = NCSI_CHANNEL_MONITOR_START;
 spin_unlock_irqrestore(&nc->lock, flags);

 return 0;
}

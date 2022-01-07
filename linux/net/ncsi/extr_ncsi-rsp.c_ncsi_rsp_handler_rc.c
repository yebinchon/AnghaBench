
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
struct ncsi_dev_priv {int dummy; } ;
struct ncsi_channel {int lock; int state; } ;


 int ENODEV ;
 int NCSI_CHANNEL_INACTIVE ;
 int ncsi_find_package_and_channel (struct ncsi_dev_priv*,int ,int *,struct ncsi_channel**) ;
 scalar_t__ skb_network_header (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ncsi_rsp_handler_rc(struct ncsi_request *nr)
{
 struct ncsi_rsp_pkt *rsp;
 struct ncsi_dev_priv *ndp = nr->ndp;
 struct ncsi_channel *nc;
 unsigned long flags;


 rsp = (struct ncsi_rsp_pkt *)skb_network_header(nr->rsp);
 ncsi_find_package_and_channel(ndp, rsp->rsp.common.channel,
          ((void*)0), &nc);
 if (!nc)
  return -ENODEV;


 spin_lock_irqsave(&nc->lock, flags);
 nc->state = NCSI_CHANNEL_INACTIVE;
 spin_unlock_irqrestore(&nc->lock, flags);

 return 0;
}

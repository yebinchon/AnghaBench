
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dev; } ;
struct ncsi_dev_priv {TYPE_2__ ndev; } ;
struct ncsi_channel_mode {int* data; } ;
struct ncsi_channel {int id; int lock; struct ncsi_channel_mode* modes; } ;
struct TYPE_3__ {int channel; } ;
struct ncsi_aen_pkt_hdr {TYPE_1__ common; } ;
struct ncsi_aen_hncdsc_pkt {int status; } ;


 int ENODEV ;
 size_t NCSI_MODE_LINK ;
 int ncsi_find_package_and_channel (struct ncsi_dev_priv*,int ,int *,struct ncsi_channel**) ;
 int netdev_dbg (int ,char*,char*,int ) ;
 int ntohl (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ncsi_aen_handler_hncdsc(struct ncsi_dev_priv *ndp,
       struct ncsi_aen_pkt_hdr *h)
{
 struct ncsi_channel *nc;
 struct ncsi_channel_mode *ncm;
 struct ncsi_aen_hncdsc_pkt *hncdsc;
 unsigned long flags;


 ncsi_find_package_and_channel(ndp, h->common.channel, ((void*)0), &nc);
 if (!nc)
  return -ENODEV;

 spin_lock_irqsave(&nc->lock, flags);
 ncm = &nc->modes[NCSI_MODE_LINK];
 hncdsc = (struct ncsi_aen_hncdsc_pkt *)h;
 ncm->data[3] = ntohl(hncdsc->status);
 spin_unlock_irqrestore(&nc->lock, flags);
 netdev_dbg(ndp->ndev.dev,
     "NCSI: host driver %srunning on channel %u\n",
     ncm->data[3] & 0x1 ? "" : "not ", nc->id);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct xen_snd_front_info {int xb_dev; } ;
struct TYPE_5__ {scalar_t__ sring; } ;
struct TYPE_7__ {int completion; int resp_status; TYPE_1__ ring; } ;
struct TYPE_6__ {scalar_t__ page; } ;
struct TYPE_8__ {TYPE_3__ req; TYPE_2__ evt; } ;
struct xen_snd_front_evtchnl {scalar_t__ type; scalar_t__ gref; scalar_t__ port; scalar_t__ irq; TYPE_4__ u; int state; } ;


 int EIO ;
 int EVTCHNL_STATE_DISCONNECTED ;
 scalar_t__ EVTCHNL_TYPE_EVT ;
 scalar_t__ EVTCHNL_TYPE_REQ ;
 scalar_t__ GRANT_INVALID_REF ;
 int complete_all (int *) ;
 int free_page (unsigned long) ;
 int gnttab_end_foreign_access (scalar_t__,int ,unsigned long) ;
 int memset (struct xen_snd_front_evtchnl*,int ,int) ;
 int unbind_from_irqhandler (scalar_t__,struct xen_snd_front_evtchnl*) ;
 int xenbus_free_evtchn (int ,scalar_t__) ;

__attribute__((used)) static void evtchnl_free(struct xen_snd_front_info *front_info,
    struct xen_snd_front_evtchnl *channel)
{
 unsigned long page = 0;

 if (channel->type == EVTCHNL_TYPE_REQ)
  page = (unsigned long)channel->u.req.ring.sring;
 else if (channel->type == EVTCHNL_TYPE_EVT)
  page = (unsigned long)channel->u.evt.page;

 if (!page)
  return;

 channel->state = EVTCHNL_STATE_DISCONNECTED;
 if (channel->type == EVTCHNL_TYPE_REQ) {

  channel->u.req.resp_status = -EIO;
  complete_all(&channel->u.req.completion);
 }

 if (channel->irq)
  unbind_from_irqhandler(channel->irq, channel);

 if (channel->port)
  xenbus_free_evtchn(front_info->xb_dev, channel->port);


 if (channel->gref != GRANT_INVALID_REF)
  gnttab_end_foreign_access(channel->gref, 0, page);
 else
  free_page(page);

 memset(channel, 0, sizeof(*channel));
}

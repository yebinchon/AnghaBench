
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int hw_param; } ;
struct xensnd_resp {scalar_t__ id; int operation; TYPE_2__ resp; int status; } ;
struct xen_snd_front_info {TYPE_3__* xb_dev; } ;
struct TYPE_15__ {scalar_t__ rsp_cons; scalar_t__ req_prod_pvt; TYPE_4__* sring; } ;
struct TYPE_9__ {int hw_param; } ;
struct TYPE_13__ {TYPE_7__ ring; int completion; TYPE_1__ resp; int resp_status; } ;
struct TYPE_14__ {TYPE_5__ req; } ;
struct xen_snd_front_evtchnl {scalar_t__ state; scalar_t__ evt_id; int ring_io_lock; TYPE_6__ u; struct xen_snd_front_info* front_info; } ;
typedef int irqreturn_t ;
struct TYPE_12__ {scalar_t__ rsp_prod; scalar_t__ rsp_event; } ;
struct TYPE_11__ {int dev; } ;
typedef scalar_t__ RING_IDX ;


 scalar_t__ EVTCHNL_STATE_CONNECTED ;
 int IRQ_HANDLED ;
 int RING_FINAL_CHECK_FOR_RESPONSES (TYPE_7__*,int) ;
 struct xensnd_resp* RING_GET_RESPONSE (TYPE_7__*,scalar_t__) ;






 int complete (int *) ;
 int dev_err (int *,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rmb () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t evtchnl_interrupt_req(int irq, void *dev_id)
{
 struct xen_snd_front_evtchnl *channel = dev_id;
 struct xen_snd_front_info *front_info = channel->front_info;
 struct xensnd_resp *resp;
 RING_IDX i, rp;

 if (unlikely(channel->state != EVTCHNL_STATE_CONNECTED))
  return IRQ_HANDLED;

 mutex_lock(&channel->ring_io_lock);

again:
 rp = channel->u.req.ring.sring->rsp_prod;

 rmb();






 for (i = channel->u.req.ring.rsp_cons; i != rp; i++) {
  resp = RING_GET_RESPONSE(&channel->u.req.ring, i);
  if (resp->id != channel->evt_id)
   continue;
  switch (resp->operation) {
  case 131:

  case 133:

  case 130:

  case 128:

  case 129:
   channel->u.req.resp_status = resp->status;
   complete(&channel->u.req.completion);
   break;
  case 132:
   channel->u.req.resp_status = resp->status;
   channel->u.req.resp.hw_param =
     resp->resp.hw_param;
   complete(&channel->u.req.completion);
   break;

  default:
   dev_err(&front_info->xb_dev->dev,
    "Operation %d is not supported\n",
    resp->operation);
   break;
  }
 }

 channel->u.req.ring.rsp_cons = i;
 if (i != channel->u.req.ring.req_prod_pvt) {
  int more_to_do;

  RING_FINAL_CHECK_FOR_RESPONSES(&channel->u.req.ring,
            more_to_do);
  if (more_to_do)
   goto again;
 } else {
  channel->u.req.ring.sring->rsp_event = i + 1;
 }

 mutex_unlock(&channel->ring_io_lock);
 return IRQ_HANDLED;
}

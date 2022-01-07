
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct xensnd_event_page {int dummy; } ;
struct xenbus_device {int dev; int otherend_id; } ;
struct xen_sndif_sring {int dummy; } ;
struct xen_snd_front_info {struct xenbus_device* xb_dev; } ;
struct TYPE_6__ {struct xensnd_event_page* page; } ;
struct TYPE_8__ {int * sring; } ;
struct TYPE_5__ {TYPE_4__ ring; int req_io_lock; int completion; } ;
struct TYPE_7__ {TYPE_2__ evt; TYPE_1__ req; } ;
struct xen_snd_front_evtchnl {int type; int index; int gref; int irq; int port; TYPE_3__ u; int ring_io_lock; int state; struct xen_snd_front_info* front_info; } ;
typedef int irq_handler_t ;
typedef int grant_ref_t ;
typedef enum xen_snd_front_evtchnl_type { ____Placeholder_xen_snd_front_evtchnl_type } xen_snd_front_evtchnl_type ;


 int ENOMEM ;
 int EVTCHNL_STATE_DISCONNECTED ;
 int EVTCHNL_TYPE_REQ ;
 int FRONT_RING_INIT (TYPE_4__*,struct xen_sndif_sring*,int ) ;
 int GFP_KERNEL ;
 int GRANT_INVALID_REF ;
 int IRQF_ONESHOT ;
 int SHARED_RING_INIT (struct xen_sndif_sring*) ;
 int XENSND_DRIVER_NAME ;
 int XENSND_FIELD_EVT_RING_REF ;
 int XENSND_FIELD_RING_REF ;
 int XEN_PAGE_SIZE ;
 int bind_evtchn_to_irq (int ) ;
 int dev_err (int *,char*,int,...) ;
 int evtchnl_interrupt_evt ;
 int evtchnl_interrupt_req ;
 int free_page (unsigned long) ;
 unsigned long get_zeroed_page (int ) ;
 int gnttab_grant_foreign_access (int ,int ,int ) ;
 int init_completion (int *) ;
 char* kasprintf (int ,char*,int ,int ) ;
 int kfree (char*) ;
 int memset (struct xen_snd_front_evtchnl*,int ,int) ;
 int mutex_init (int *) ;
 int request_threaded_irq (int,int *,int ,int ,char*,struct xen_snd_front_evtchnl*) ;
 int virt_to_gfn (void*) ;
 int xenbus_alloc_evtchn (struct xenbus_device*,int *) ;
 int xenbus_grant_ring (struct xenbus_device*,struct xen_sndif_sring*,int,int*) ;

__attribute__((used)) static int evtchnl_alloc(struct xen_snd_front_info *front_info, int index,
    struct xen_snd_front_evtchnl *channel,
    enum xen_snd_front_evtchnl_type type)
{
 struct xenbus_device *xb_dev = front_info->xb_dev;
 unsigned long page;
 grant_ref_t gref;
 irq_handler_t handler;
 char *handler_name = ((void*)0);
 int ret;

 memset(channel, 0, sizeof(*channel));
 channel->type = type;
 channel->index = index;
 channel->front_info = front_info;
 channel->state = EVTCHNL_STATE_DISCONNECTED;
 channel->gref = GRANT_INVALID_REF;
 page = get_zeroed_page(GFP_KERNEL);
 if (!page) {
  ret = -ENOMEM;
  goto fail;
 }

 handler_name = kasprintf(GFP_KERNEL, "%s-%s", XENSND_DRIVER_NAME,
     type == EVTCHNL_TYPE_REQ ?
     XENSND_FIELD_RING_REF :
     XENSND_FIELD_EVT_RING_REF);
 if (!handler_name) {
  ret = -ENOMEM;
  goto fail;
 }

 mutex_init(&channel->ring_io_lock);

 if (type == EVTCHNL_TYPE_REQ) {
  struct xen_sndif_sring *sring = (struct xen_sndif_sring *)page;

  init_completion(&channel->u.req.completion);
  mutex_init(&channel->u.req.req_io_lock);
  SHARED_RING_INIT(sring);
  FRONT_RING_INIT(&channel->u.req.ring, sring, XEN_PAGE_SIZE);

  ret = xenbus_grant_ring(xb_dev, sring, 1, &gref);
  if (ret < 0) {
   channel->u.req.ring.sring = ((void*)0);
   goto fail;
  }

  handler = evtchnl_interrupt_req;
 } else {
  ret = gnttab_grant_foreign_access(xb_dev->otherend_id,
        virt_to_gfn((void *)page), 0);
  if (ret < 0)
   goto fail;

  channel->u.evt.page = (struct xensnd_event_page *)page;
  gref = ret;
  handler = evtchnl_interrupt_evt;
 }

 channel->gref = gref;

 ret = xenbus_alloc_evtchn(xb_dev, &channel->port);
 if (ret < 0)
  goto fail;

 ret = bind_evtchn_to_irq(channel->port);
 if (ret < 0) {
  dev_err(&xb_dev->dev,
   "Failed to bind IRQ for domid %d port %d: %d\n",
   front_info->xb_dev->otherend_id, channel->port, ret);
  goto fail;
 }

 channel->irq = ret;

 ret = request_threaded_irq(channel->irq, ((void*)0), handler,
       IRQF_ONESHOT, handler_name, channel);
 if (ret < 0) {
  dev_err(&xb_dev->dev, "Failed to request IRQ %d: %d\n",
   channel->irq, ret);
  goto fail;
 }

 kfree(handler_name);
 return 0;

fail:
 if (page)
  free_page(page);
 kfree(handler_name);
 dev_err(&xb_dev->dev, "Failed to allocate ring: %d\n", ret);
 return ret;
}

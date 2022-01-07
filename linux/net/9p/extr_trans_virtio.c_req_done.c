
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct virtqueue {TYPE_2__* vdev; } ;
struct virtio_chan {int ring_bufs_avail; int vc_wq; int lock; int client; int vq; } ;
struct TYPE_3__ {unsigned int size; } ;
struct p9_req_t {TYPE_1__ rc; } ;
struct TYPE_4__ {struct virtio_chan* priv; } ;


 int P9_DEBUG_TRANS ;
 int REQ_STATUS_RCVD ;
 int p9_client_cb (int ,struct p9_req_t*,int ) ;
 int p9_debug (int ,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct p9_req_t* virtqueue_get_buf (int ,unsigned int*) ;
 int wake_up (int ) ;

__attribute__((used)) static void req_done(struct virtqueue *vq)
{
 struct virtio_chan *chan = vq->vdev->priv;
 unsigned int len;
 struct p9_req_t *req;
 bool need_wakeup = 0;
 unsigned long flags;

 p9_debug(P9_DEBUG_TRANS, ": request done\n");

 spin_lock_irqsave(&chan->lock, flags);
 while ((req = virtqueue_get_buf(chan->vq, &len)) != ((void*)0)) {
  if (!chan->ring_bufs_avail) {
   chan->ring_bufs_avail = 1;
   need_wakeup = 1;
  }

  if (len) {
   req->rc.size = len;
   p9_client_cb(chan->client, req, REQ_STATUS_RCVD);
  }
 }
 spin_unlock_irqrestore(&chan->lock, flags);

 if (need_wakeup)
  wake_up(chan->vc_wq);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct virtio_chan {int lock; int vq; scalar_t__ ring_bufs_avail; int * vc_wq; struct scatterlist* sg; } ;
struct scatterlist {int dummy; } ;
struct TYPE_4__ {int capacity; int sdata; } ;
struct TYPE_3__ {int size; int sdata; } ;
struct p9_req_t {TYPE_2__ rc; TYPE_1__ tc; int status; } ;
struct p9_client {struct virtio_chan* trans; } ;


 int EIO ;
 int ENOSPC ;
 int ERESTARTSYS ;
 int GFP_ATOMIC ;
 int P9_DEBUG_TRANS ;
 int REQ_STATUS_SENT ;
 int VIRTQUEUE_NUM ;
 int p9_debug (int ,char*) ;
 int pack_sg_list (struct scatterlist*,int,int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int virtqueue_add_sgs (int ,struct scatterlist**,int,int,struct p9_req_t*,int ) ;
 int virtqueue_kick (int ) ;
 int wait_event_killable (int ,scalar_t__) ;

__attribute__((used)) static int
p9_virtio_request(struct p9_client *client, struct p9_req_t *req)
{
 int err;
 int in, out, out_sgs, in_sgs;
 unsigned long flags;
 struct virtio_chan *chan = client->trans;
 struct scatterlist *sgs[2];

 p9_debug(P9_DEBUG_TRANS, "9p debug: virtio request\n");

 req->status = REQ_STATUS_SENT;
req_retry:
 spin_lock_irqsave(&chan->lock, flags);

 out_sgs = in_sgs = 0;

 out = pack_sg_list(chan->sg, 0,
      VIRTQUEUE_NUM, req->tc.sdata, req->tc.size);
 if (out)
  sgs[out_sgs++] = chan->sg;

 in = pack_sg_list(chan->sg, out,
     VIRTQUEUE_NUM, req->rc.sdata, req->rc.capacity);
 if (in)
  sgs[out_sgs + in_sgs++] = chan->sg + out;

 err = virtqueue_add_sgs(chan->vq, sgs, out_sgs, in_sgs, req,
    GFP_ATOMIC);
 if (err < 0) {
  if (err == -ENOSPC) {
   chan->ring_bufs_avail = 0;
   spin_unlock_irqrestore(&chan->lock, flags);
   err = wait_event_killable(*chan->vc_wq,
        chan->ring_bufs_avail);
   if (err == -ERESTARTSYS)
    return err;

   p9_debug(P9_DEBUG_TRANS, "Retry virtio request\n");
   goto req_retry;
  } else {
   spin_unlock_irqrestore(&chan->lock, flags);
   p9_debug(P9_DEBUG_TRANS,
     "virtio rpc add_sgs returned failure\n");
   return -EIO;
  }
 }
 virtqueue_kick(chan->vq);
 spin_unlock_irqrestore(&chan->lock, flags);

 p9_debug(P9_DEBUG_TRANS, "virtio request kicked\n");
 return 0;
}

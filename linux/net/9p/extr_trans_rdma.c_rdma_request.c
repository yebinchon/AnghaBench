
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct p9_trans_rdma {scalar_t__ state; int req_lock; TYPE_5__* cm_id; int excess_rc; int qp; int sq_sem; TYPE_3__* pd; int rq_sem; } ;
struct TYPE_8__ {int size; int sdata; } ;
struct TYPE_12__ {int * sdata; } ;
struct p9_req_t {int status; TYPE_2__ tc; TYPE_6__ rc; } ;
struct TYPE_10__ {int done; } ;
struct TYPE_7__ {int * sdata; } ;
struct p9_rdma_context {TYPE_4__ cqe; struct p9_req_t* req; int busa; TYPE_1__ rc; } ;
struct p9_client {struct p9_trans_rdma* trans; } ;
struct ib_sge {int lkey; int length; int addr; } ;
struct ib_send_wr {int num_sge; struct ib_sge* sg_list; int send_flags; int opcode; TYPE_4__* wr_cqe; int * next; } ;
struct TYPE_11__ {int device; } ;
struct TYPE_9__ {int local_dma_lkey; } ;


 int DMA_TO_DEVICE ;
 int EINTR ;
 int EIO ;
 int ENOMEM ;
 int GFP_NOFS ;
 int IB_SEND_SIGNALED ;
 int IB_WR_SEND ;
 int P9_DEBUG_ERROR ;
 scalar_t__ P9_RDMA_CLOSING ;
 int REQ_STATUS_ERROR ;
 int REQ_STATUS_SENT ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ atomic_sub_return (int,int *) ;
 scalar_t__ down_interruptible (int *) ;
 int ib_dma_map_single (int ,int ,int ,int ) ;
 scalar_t__ ib_dma_mapping_error (int ,int ) ;
 int ib_post_send (int ,struct ib_send_wr*,int *) ;
 int kfree (struct p9_rdma_context*) ;
 struct p9_rdma_context* kmalloc (int,int ) ;
 int p9_debug (int ,char*,int) ;
 int p9_fcall_fini (TYPE_6__*) ;
 int post_recv (struct p9_client*,struct p9_rdma_context*) ;
 int rdma_disconnect (TYPE_5__*) ;
 int send_done ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int rdma_request(struct p9_client *client, struct p9_req_t *req)
{
 struct p9_trans_rdma *rdma = client->trans;
 struct ib_send_wr wr;
 struct ib_sge sge;
 int err = 0;
 unsigned long flags;
 struct p9_rdma_context *c = ((void*)0);
 struct p9_rdma_context *rpl_context = ((void*)0);
 if (unlikely(atomic_read(&rdma->excess_rc) > 0)) {
  if ((atomic_sub_return(1, &rdma->excess_rc) >= 0)) {

   p9_fcall_fini(&req->rc);
   req->rc.sdata = ((void*)0);
   goto dont_need_post_recv;
  } else {

   atomic_inc(&rdma->excess_rc);
  }
 }


 rpl_context = kmalloc(sizeof *rpl_context, GFP_NOFS);
 if (!rpl_context) {
  err = -ENOMEM;
  goto recv_error;
 }
 rpl_context->rc.sdata = req->rc.sdata;
 if (down_interruptible(&rdma->rq_sem)) {
  err = -EINTR;
  goto recv_error;
 }

 err = post_recv(client, rpl_context);
 if (err) {
  p9_debug(P9_DEBUG_ERROR, "POST RECV failed: %d\n", err);
  goto recv_error;
 }

 req->rc.sdata = ((void*)0);

dont_need_post_recv:

 c = kmalloc(sizeof *c, GFP_NOFS);
 if (!c) {
  err = -ENOMEM;
  goto send_error;
 }
 c->req = req;

 c->busa = ib_dma_map_single(rdma->cm_id->device,
        c->req->tc.sdata, c->req->tc.size,
        DMA_TO_DEVICE);
 if (ib_dma_mapping_error(rdma->cm_id->device, c->busa)) {
  err = -EIO;
  goto send_error;
 }

 c->cqe.done = send_done;

 sge.addr = c->busa;
 sge.length = c->req->tc.size;
 sge.lkey = rdma->pd->local_dma_lkey;

 wr.next = ((void*)0);
 wr.wr_cqe = &c->cqe;
 wr.opcode = IB_WR_SEND;
 wr.send_flags = IB_SEND_SIGNALED;
 wr.sg_list = &sge;
 wr.num_sge = 1;

 if (down_interruptible(&rdma->sq_sem)) {
  err = -EINTR;
  goto send_error;
 }





 req->status = REQ_STATUS_SENT;
 err = ib_post_send(rdma->qp, &wr, ((void*)0));
 if (err)
  goto send_error;


 return 0;


 send_error:
 req->status = REQ_STATUS_ERROR;
 kfree(c);
 p9_debug(P9_DEBUG_ERROR, "Error %d in rdma_request()\n", err);




 atomic_inc(&rdma->excess_rc);
 return err;


 recv_error:
 kfree(rpl_context);
 spin_lock_irqsave(&rdma->req_lock, flags);
 if (err != -EINTR && rdma->state < P9_RDMA_CLOSING) {
  rdma->state = P9_RDMA_CLOSING;
  spin_unlock_irqrestore(&rdma->req_lock, flags);
  rdma_disconnect(rdma->cm_id);
 } else
  spin_unlock_irqrestore(&rdma->req_lock, flags);
 return err;
}

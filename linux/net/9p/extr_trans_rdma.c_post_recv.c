
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct p9_trans_rdma {int qp; TYPE_3__* pd; TYPE_2__* cm_id; } ;
struct TYPE_8__ {int done; } ;
struct TYPE_5__ {int sdata; } ;
struct p9_rdma_context {TYPE_4__ cqe; int busa; TYPE_1__ rc; } ;
struct p9_client {int msize; struct p9_trans_rdma* trans; } ;
struct ib_sge {int lkey; int length; int addr; } ;
struct ib_recv_wr {int num_sge; struct ib_sge* sg_list; TYPE_4__* wr_cqe; int * next; } ;
struct TYPE_7__ {int local_dma_lkey; } ;
struct TYPE_6__ {int device; } ;


 int DMA_FROM_DEVICE ;
 int EIO ;
 int P9_DEBUG_ERROR ;
 int ib_dma_map_single (int ,int ,int ,int ) ;
 scalar_t__ ib_dma_mapping_error (int ,int ) ;
 int ib_post_recv (int ,struct ib_recv_wr*,int *) ;
 int p9_debug (int ,char*) ;
 int recv_done ;

__attribute__((used)) static int
post_recv(struct p9_client *client, struct p9_rdma_context *c)
{
 struct p9_trans_rdma *rdma = client->trans;
 struct ib_recv_wr wr;
 struct ib_sge sge;

 c->busa = ib_dma_map_single(rdma->cm_id->device,
        c->rc.sdata, client->msize,
        DMA_FROM_DEVICE);
 if (ib_dma_mapping_error(rdma->cm_id->device, c->busa))
  goto error;

 c->cqe.done = recv_done;

 sge.addr = c->busa;
 sge.length = client->msize;
 sge.lkey = rdma->pd->local_dma_lkey;

 wr.next = ((void*)0);
 wr.wr_cqe = &c->cqe;
 wr.sg_list = &sge;
 wr.num_sge = 1;
 return ib_post_recv(rdma->qp, &wr, ((void*)0));

 error:
 p9_debug(P9_DEBUG_ERROR, "EIO\n");
 return -EIO;
}

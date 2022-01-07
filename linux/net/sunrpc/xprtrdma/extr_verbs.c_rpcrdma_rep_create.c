
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int rep_inline_recv; } ;
struct rpcrdma_xprt {TYPE_1__ rx_ep; } ;
struct TYPE_9__ {int num_sge; int * sg_list; TYPE_2__* wr_cqe; int * next; } ;
struct TYPE_8__ {int done; } ;
struct rpcrdma_rep {int rr_temp; TYPE_3__ rr_recv_wr; TYPE_4__* rr_rdmabuf; TYPE_2__ rr_cqe; struct rpcrdma_xprt* rr_rxprt; int rr_hdrbuf; } ;
struct TYPE_10__ {int rg_iov; } ;


 int DMA_FROM_DEVICE ;
 int GFP_KERNEL ;
 int kfree (struct rpcrdma_rep*) ;
 struct rpcrdma_rep* kzalloc (int,int ) ;
 int rdmab_data (TYPE_4__*) ;
 int rdmab_length (TYPE_4__*) ;
 TYPE_4__* rpcrdma_regbuf_alloc (int ,int ,int ) ;
 int rpcrdma_wc_receive ;
 int xdr_buf_init (int *,int ,int ) ;

__attribute__((used)) static struct rpcrdma_rep *rpcrdma_rep_create(struct rpcrdma_xprt *r_xprt,
           bool temp)
{
 struct rpcrdma_rep *rep;

 rep = kzalloc(sizeof(*rep), GFP_KERNEL);
 if (rep == ((void*)0))
  goto out;

 rep->rr_rdmabuf = rpcrdma_regbuf_alloc(r_xprt->rx_ep.rep_inline_recv,
            DMA_FROM_DEVICE, GFP_KERNEL);
 if (!rep->rr_rdmabuf)
  goto out_free;

 xdr_buf_init(&rep->rr_hdrbuf, rdmab_data(rep->rr_rdmabuf),
       rdmab_length(rep->rr_rdmabuf));
 rep->rr_cqe.done = rpcrdma_wc_receive;
 rep->rr_rxprt = r_xprt;
 rep->rr_recv_wr.next = ((void*)0);
 rep->rr_recv_wr.wr_cqe = &rep->rr_cqe;
 rep->rr_recv_wr.sg_list = &rep->rr_rdmabuf->rg_iov;
 rep->rr_recv_wr.num_sge = 1;
 rep->rr_temp = temp;
 return rep;

out_free:
 kfree(rep);
out:
 return ((void*)0);
}

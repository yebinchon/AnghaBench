
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xdr_buf {int len; int buflen; scalar_t__ page_base; scalar_t__ page_len; TYPE_2__* tail; TYPE_1__* head; } ;
struct svc_rqst {struct xdr_buf rq_arg; } ;
struct svc_rdma_recv_ctxt {int rc_byte_len; int rc_recv_buf; } ;
struct TYPE_4__ {scalar_t__ iov_len; int * iov_base; } ;
struct TYPE_3__ {int iov_len; int iov_base; } ;



__attribute__((used)) static void svc_rdma_build_arg_xdr(struct svc_rqst *rqstp,
       struct svc_rdma_recv_ctxt *ctxt)
{
 struct xdr_buf *arg = &rqstp->rq_arg;

 arg->head[0].iov_base = ctxt->rc_recv_buf;
 arg->head[0].iov_len = ctxt->rc_byte_len;
 arg->tail[0].iov_base = ((void*)0);
 arg->tail[0].iov_len = 0;
 arg->page_len = 0;
 arg->page_base = 0;
 arg->buflen = ctxt->rc_byte_len;
 arg->len = ctxt->rc_byte_len;
}

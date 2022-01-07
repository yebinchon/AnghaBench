
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct rpc_task {int tk_status; struct rpc_rqst* tk_rqstp; } ;
struct TYPE_6__ {TYPE_1__* head; } ;
struct rpc_rqst {TYPE_2__ rq_snd_buf; scalar_t__ rq_reply_bytes_recvd; int rq_rcvsize; int rq_rbuffer; TYPE_2__ rq_rcv_buf; int rq_callsize; int rq_buffer; } ;
struct TYPE_5__ {int iov_base; scalar_t__ iov_len; } ;


 scalar_t__ rpc_encode_header (struct rpc_task*,struct xdr_stream*) ;
 int rpcauth_wrap_req (struct rpc_task*,struct xdr_stream*) ;
 int xdr_buf_init (TYPE_2__*,int ,int ) ;
 int xdr_free_bvec (TYPE_2__*) ;
 int xdr_init_encode (struct xdr_stream*,TYPE_2__*,int ,struct rpc_rqst*) ;

__attribute__((used)) static void
rpc_xdr_encode(struct rpc_task *task)
{
 struct rpc_rqst *req = task->tk_rqstp;
 struct xdr_stream xdr;

 xdr_buf_init(&req->rq_snd_buf,
       req->rq_buffer,
       req->rq_callsize);
 xdr_buf_init(&req->rq_rcv_buf,
       req->rq_rbuffer,
       req->rq_rcvsize);

 req->rq_reply_bytes_recvd = 0;
 req->rq_snd_buf.head[0].iov_len = 0;
 xdr_init_encode(&xdr, &req->rq_snd_buf,
   req->rq_snd_buf.head[0].iov_base, req);
 xdr_free_bvec(&req->rq_snd_buf);
 if (rpc_encode_header(task, &xdr))
  return;

 task->tk_status = rpcauth_wrap_req(task, &xdr);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct xdr_stream {int dummy; } ;
struct xdr_netobj {int len; int * data; } ;
struct xdr_buf {scalar_t__ len; TYPE_1__* head; } ;
struct rpc_task {struct rpc_rqst* tk_rqstp; } ;
struct rpc_rqst {scalar_t__ rq_seqno; struct xdr_buf rq_snd_buf; } ;
struct rpc_cred {int cr_flags; } ;
struct gss_cl_ctx {int gc_gss_ctx; } ;
typedef int __be32 ;
struct TYPE_2__ {scalar_t__ iov_base; } ;


 int EIO ;
 int EMSGSIZE ;
 scalar_t__ GSS_S_CONTEXT_EXPIRED ;
 int RPCAUTH_CRED_UPTODATE ;
 int clear_bit (int ,int *) ;
 int cpu_to_be32 (scalar_t__) ;
 scalar_t__ gss_get_mic (int ,struct xdr_buf*,struct xdr_netobj*) ;
 scalar_t__ rpcauth_wrap_req_encode (struct rpc_task*,struct xdr_stream*) ;
 int trace_rpcgss_get_mic (struct rpc_task*,scalar_t__) ;
 scalar_t__ xdr_buf_subsegment (struct xdr_buf*,struct xdr_buf*,scalar_t__,scalar_t__) ;
 int * xdr_reserve_space (struct xdr_stream*,int) ;
 scalar_t__ xdr_stream_encode_opaque_inline (struct xdr_stream*,void**,int ) ;

__attribute__((used)) static int gss_wrap_req_integ(struct rpc_cred *cred, struct gss_cl_ctx *ctx,
         struct rpc_task *task, struct xdr_stream *xdr)
{
 struct rpc_rqst *rqstp = task->tk_rqstp;
 struct xdr_buf integ_buf, *snd_buf = &rqstp->rq_snd_buf;
 struct xdr_netobj mic;
 __be32 *p, *integ_len;
 u32 offset, maj_stat;

 p = xdr_reserve_space(xdr, 2 * sizeof(*p));
 if (!p)
  goto wrap_failed;
 integ_len = p++;
 *p = cpu_to_be32(rqstp->rq_seqno);

 if (rpcauth_wrap_req_encode(task, xdr))
  goto wrap_failed;

 offset = (u8 *)p - (u8 *)snd_buf->head[0].iov_base;
 if (xdr_buf_subsegment(snd_buf, &integ_buf,
    offset, snd_buf->len - offset))
  goto wrap_failed;
 *integ_len = cpu_to_be32(integ_buf.len);

 p = xdr_reserve_space(xdr, 0);
 if (!p)
  goto wrap_failed;
 mic.data = (u8 *)(p + 1);
 maj_stat = gss_get_mic(ctx->gc_gss_ctx, &integ_buf, &mic);
 if (maj_stat == GSS_S_CONTEXT_EXPIRED)
  clear_bit(RPCAUTH_CRED_UPTODATE, &cred->cr_flags);
 else if (maj_stat)
  goto bad_mic;

 if (xdr_stream_encode_opaque_inline(xdr, (void **)&p, mic.len) < 0)
  goto wrap_failed;
 return 0;
wrap_failed:
 return -EMSGSIZE;
bad_mic:
 trace_rpcgss_get_mic(task, maj_stat);
 return -EIO;
}

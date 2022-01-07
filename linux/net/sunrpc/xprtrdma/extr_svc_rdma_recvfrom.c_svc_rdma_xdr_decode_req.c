
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_buf {scalar_t__ len; TYPE_1__* head; } ;
typedef scalar_t__ __be32 ;
struct TYPE_2__ {scalar_t__* iov_base; unsigned int iov_len; } ;


 int EINVAL ;
 int EPROTONOSUPPORT ;
 scalar_t__ RPCRDMA_HDRLEN_ERR ;




 scalar_t__ rpcrdma_version ;
 int trace_svcrdma_decode_badproc (scalar_t__*) ;
 int trace_svcrdma_decode_badvers (scalar_t__*) ;
 int trace_svcrdma_decode_drop (scalar_t__*) ;
 int trace_svcrdma_decode_parse (scalar_t__*) ;
 int trace_svcrdma_decode_rqst (scalar_t__*,unsigned int) ;
 int trace_svcrdma_decode_short (scalar_t__) ;
 scalar_t__* xdr_check_read_list (scalar_t__*,scalar_t__*) ;
 scalar_t__* xdr_check_reply_chunk (scalar_t__*,scalar_t__*) ;
 scalar_t__* xdr_check_write_list (scalar_t__*,scalar_t__*) ;

__attribute__((used)) static int svc_rdma_xdr_decode_req(struct xdr_buf *rq_arg)
{
 __be32 *p, *end, *rdma_argp;
 unsigned int hdr_len;


 if (rq_arg->len <= RPCRDMA_HDRLEN_ERR)
  goto out_short;

 rdma_argp = rq_arg->head[0].iov_base;
 if (*(rdma_argp + 1) != rpcrdma_version)
  goto out_version;

 switch (*(rdma_argp + 3)) {
 case 129:
  break;
 case 128:
  break;

 case 131:
  goto out_drop;

 case 130:
  goto out_drop;

 default:
  goto out_proc;
 }

 end = (__be32 *)((unsigned long)rdma_argp + rq_arg->len);
 p = xdr_check_read_list(rdma_argp + 4, end);
 if (!p)
  goto out_inval;
 p = xdr_check_write_list(p, end);
 if (!p)
  goto out_inval;
 p = xdr_check_reply_chunk(p, end);
 if (!p)
  goto out_inval;
 if (p > end)
  goto out_inval;

 rq_arg->head[0].iov_base = p;
 hdr_len = (unsigned long)p - (unsigned long)rdma_argp;
 rq_arg->head[0].iov_len -= hdr_len;
 rq_arg->len -= hdr_len;
 trace_svcrdma_decode_rqst(rdma_argp, hdr_len);
 return hdr_len;

out_short:
 trace_svcrdma_decode_short(rq_arg->len);
 return -EINVAL;

out_version:
 trace_svcrdma_decode_badvers(rdma_argp);
 return -EPROTONOSUPPORT;

out_drop:
 trace_svcrdma_decode_drop(rdma_argp);
 return 0;

out_proc:
 trace_svcrdma_decode_badproc(rdma_argp);
 return -EINVAL;

out_inval:
 trace_svcrdma_decode_parse(rdma_argp);
 return -EINVAL;
}

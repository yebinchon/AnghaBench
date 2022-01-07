
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct xdr_stream {int dummy; } ;
struct TYPE_2__ {int total_rdma_reply; int fixup_copy_count; } ;
struct rpcrdma_xprt {TYPE_1__ rx_stats; } ;
struct rpcrdma_rep {struct xdr_stream rr_stream; } ;
struct rpc_rqst {int dummy; } ;


 int EIO ;
 scalar_t__ decode_read_list (struct xdr_stream*) ;
 scalar_t__ decode_reply_chunk (struct xdr_stream*,int*) ;
 scalar_t__ decode_write_list (struct xdr_stream*,int*) ;
 scalar_t__ rpcrdma_inline_fixup (struct rpc_rqst*,char*,int,int) ;
 scalar_t__ unlikely (int) ;
 int xdr_align_size (int) ;
 scalar_t__ xdr_inline_decode (struct xdr_stream*,int ) ;
 int xdr_stream_remaining (struct xdr_stream*) ;

__attribute__((used)) static int
rpcrdma_decode_msg(struct rpcrdma_xprt *r_xprt, struct rpcrdma_rep *rep,
     struct rpc_rqst *rqst)
{
 struct xdr_stream *xdr = &rep->rr_stream;
 u32 writelist, replychunk, rpclen;
 char *base;


 if (decode_read_list(xdr))
  return -EIO;
 if (decode_write_list(xdr, &writelist))
  return -EIO;
 if (decode_reply_chunk(xdr, &replychunk))
  return -EIO;


 if (unlikely(replychunk))
  return -EIO;


 base = (char *)xdr_inline_decode(xdr, 0);
 rpclen = xdr_stream_remaining(xdr);
 r_xprt->rx_stats.fixup_copy_count +=
  rpcrdma_inline_fixup(rqst, base, rpclen, writelist & 3);

 r_xprt->rx_stats.total_rdma_reply += writelist;
 return rpclen + xdr_align_size(writelist);
}

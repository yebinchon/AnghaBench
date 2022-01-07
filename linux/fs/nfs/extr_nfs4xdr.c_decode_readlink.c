
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct xdr_stream {int dummy; } ;
struct xdr_buf {scalar_t__ page_len; } ;
struct rpc_rqst {struct xdr_buf rq_rcv_buf; } ;
typedef int __be32 ;


 int EIO ;
 int ENAMETOOLONG ;
 int OP_READLINK ;
 scalar_t__ be32_to_cpup (int *) ;
 int decode_op_hdr (struct xdr_stream*,int ) ;
 int dprintk (char*,...) ;
 scalar_t__ unlikely (int) ;
 int * xdr_inline_decode (struct xdr_stream*,int) ;
 scalar_t__ xdr_read_pages (struct xdr_stream*,scalar_t__) ;
 int xdr_terminate_string (struct xdr_buf*,scalar_t__) ;

__attribute__((used)) static int decode_readlink(struct xdr_stream *xdr, struct rpc_rqst *req)
{
 struct xdr_buf *rcvbuf = &req->rq_rcv_buf;
 u32 len, recvd;
 __be32 *p;
 int status;

 status = decode_op_hdr(xdr, OP_READLINK);
 if (status)
  return status;


 p = xdr_inline_decode(xdr, 4);
 if (unlikely(!p))
  return -EIO;
 len = be32_to_cpup(p);
 if (len >= rcvbuf->page_len || len <= 0) {
  dprintk("nfs: server returned giant symlink!\n");
  return -ENAMETOOLONG;
 }
 recvd = xdr_read_pages(xdr, len);
 if (recvd < len) {
  dprintk("NFS: server cheating in readlink reply: "
    "count %u > recvd %u\n", len, recvd);
  return -EIO;
 }







 xdr_terminate_string(rcvbuf, len);
 return 0;
}

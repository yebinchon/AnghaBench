
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct xdr_stream {int dummy; } ;
struct rpc_rqst {int dummy; } ;
struct nfs_pgio_res {scalar_t__ count; scalar_t__ eof; } ;
typedef int __be32 ;


 int EIO ;
 int OP_READ ;
 scalar_t__ be32_to_cpup (int *) ;
 int decode_op_hdr (struct xdr_stream*,int ) ;
 int dprintk (char*,scalar_t__,scalar_t__) ;
 scalar_t__ unlikely (int) ;
 int * xdr_inline_decode (struct xdr_stream*,int) ;
 scalar_t__ xdr_read_pages (struct xdr_stream*,scalar_t__) ;

__attribute__((used)) static int decode_read(struct xdr_stream *xdr, struct rpc_rqst *req,
         struct nfs_pgio_res *res)
{
 __be32 *p;
 uint32_t count, eof, recvd;
 int status;

 status = decode_op_hdr(xdr, OP_READ);
 if (status)
  return status;
 p = xdr_inline_decode(xdr, 8);
 if (unlikely(!p))
  return -EIO;
 eof = be32_to_cpup(p++);
 count = be32_to_cpup(p);
 recvd = xdr_read_pages(xdr, count);
 if (count > recvd) {
  dprintk("NFS: server cheating in read reply: "
    "count %u > recvd %u\n", count, recvd);
  count = recvd;
  eof = 0;
 }
 res->eof = eof;
 res->count = count;
 return 0;
}

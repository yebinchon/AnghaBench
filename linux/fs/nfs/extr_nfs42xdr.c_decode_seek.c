
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfs42_seek_res {int sr_offset; int sr_eof; } ;
typedef int __be32 ;


 int EIO ;
 int OP_SEEK ;
 int be32_to_cpup (int ) ;
 int decode_op_hdr (struct xdr_stream*,int ) ;
 scalar_t__ unlikely (int) ;
 int * xdr_decode_hyper (int *,int *) ;
 int * xdr_inline_decode (struct xdr_stream*,int) ;

__attribute__((used)) static int decode_seek(struct xdr_stream *xdr, struct nfs42_seek_res *res)
{
 int status;
 __be32 *p;

 status = decode_op_hdr(xdr, OP_SEEK);
 if (status)
  return status;

 p = xdr_inline_decode(xdr, 4 + 8);
 if (unlikely(!p))
  return -EIO;

 res->sr_eof = be32_to_cpup(p++);
 p = xdr_decode_hyper(p, &res->sr_offset);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct nfs_pgio_res {TYPE_1__* verf; void* count; } ;
typedef int __be32 ;
struct TYPE_2__ {int verifier; void* committed; } ;


 int EIO ;
 int OP_WRITE ;
 void* be32_to_cpup (int ) ;
 int decode_op_hdr (struct xdr_stream*,int ) ;
 int decode_write_verifier (struct xdr_stream*,int *) ;
 scalar_t__ unlikely (int) ;
 int * xdr_inline_decode (struct xdr_stream*,int) ;

__attribute__((used)) static int decode_write(struct xdr_stream *xdr, struct nfs_pgio_res *res)
{
 __be32 *p;
 int status;

 status = decode_op_hdr(xdr, OP_WRITE);
 if (status)
  return status;

 p = xdr_inline_decode(xdr, 8);
 if (unlikely(!p))
  return -EIO;
 res->count = be32_to_cpup(p++);
 res->verf->committed = be32_to_cpup(p++);
 return decode_write_verifier(xdr, &res->verf->verifier);
}

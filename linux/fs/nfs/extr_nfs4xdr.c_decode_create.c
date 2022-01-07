
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct xdr_stream {int dummy; } ;
struct nfs4_change_info {int dummy; } ;
typedef int __be32 ;


 int EIO ;
 int OP_CREATE ;
 int be32_to_cpup (int *) ;
 int decode_change_info (struct xdr_stream*,struct nfs4_change_info*) ;
 int decode_op_hdr (struct xdr_stream*,int ) ;
 scalar_t__ likely (int *) ;
 scalar_t__ unlikely (int) ;
 int * xdr_inline_decode (struct xdr_stream*,int) ;

__attribute__((used)) static int decode_create(struct xdr_stream *xdr, struct nfs4_change_info *cinfo)
{
 __be32 *p;
 uint32_t bmlen;
 int status;

 status = decode_op_hdr(xdr, OP_CREATE);
 if (status)
  return status;
 if ((status = decode_change_info(xdr, cinfo)))
  return status;
 p = xdr_inline_decode(xdr, 4);
 if (unlikely(!p))
  return -EIO;
 bmlen = be32_to_cpup(p);
 p = xdr_inline_decode(xdr, bmlen << 2);
 if (likely(p))
  return 0;
 return -EIO;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct TYPE_2__ {int verifier; void* committed; } ;
struct nfs42_write_res {TYPE_1__ verifier; int count; int stateid; } ;
typedef int __be32 ;


 int EIO ;
 int EREMOTEIO ;
 int NFS4_STATEID_SIZE ;
 void* be32_to_cpup (int *) ;
 int decode_opaque_fixed (struct xdr_stream*,int *,int ) ;
 int decode_verifier (struct xdr_stream*,int *) ;
 scalar_t__ unlikely (int) ;
 int * xdr_decode_hyper (int *,int *) ;
 int * xdr_inline_decode (struct xdr_stream*,int) ;

__attribute__((used)) static int decode_write_response(struct xdr_stream *xdr,
     struct nfs42_write_res *res)
{
 __be32 *p;
 int status, count;

 p = xdr_inline_decode(xdr, 4);
 if (unlikely(!p))
  return -EIO;
 count = be32_to_cpup(p);
 if (count > 1)
  return -EREMOTEIO;
 else if (count == 1) {
  status = decode_opaque_fixed(xdr, &res->stateid,
    NFS4_STATEID_SIZE);
  if (unlikely(status))
   return -EIO;
 }
 p = xdr_inline_decode(xdr, 8 + 4);
 if (unlikely(!p))
  return -EIO;
 p = xdr_decode_hyper(p, &res->count);
 res->verifier.committed = be32_to_cpup(p);
 return decode_verifier(xdr, &res->verifier.verifier);
}

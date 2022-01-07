
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfsd4_offload_status {int count; } ;
struct nfsd4_compoundres {struct xdr_stream xdr; } ;
typedef int __be32 ;


 int cpu_to_be32 (int ) ;
 int nfserr_resource ;
 int * xdr_encode_hyper (int *,int ) ;
 int * xdr_reserve_space (struct xdr_stream*,int) ;

__attribute__((used)) static __be32
nfsd4_encode_offload_status(struct nfsd4_compoundres *resp, __be32 nfserr,
       struct nfsd4_offload_status *os)
{
 struct xdr_stream *xdr = &resp->xdr;
 __be32 *p;

 p = xdr_reserve_space(xdr, 8 + 4);
 if (!p)
  return nfserr_resource;
 p = xdr_encode_hyper(p, os->count);
 *p++ = cpu_to_be32(0);

 return nfserr;
}

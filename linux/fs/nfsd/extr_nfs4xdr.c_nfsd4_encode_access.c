
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfsd4_compoundres {struct xdr_stream xdr; } ;
struct nfsd4_access {int ac_resp_access; int ac_supported; } ;
typedef int __be32 ;


 void* cpu_to_be32 (int ) ;
 int nfserr_resource ;
 int * xdr_reserve_space (struct xdr_stream*,int) ;

__attribute__((used)) static __be32
nfsd4_encode_access(struct nfsd4_compoundres *resp, __be32 nfserr, struct nfsd4_access *access)
{
 struct xdr_stream *xdr = &resp->xdr;
 __be32 *p;

 p = xdr_reserve_space(xdr, 8);
 if (!p)
  return nfserr_resource;
 *p++ = cpu_to_be32(access->ac_supported);
 *p++ = cpu_to_be32(access->ac_resp_access);
 return 0;
}

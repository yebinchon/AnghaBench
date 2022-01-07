
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct TYPE_2__ {unsigned int fh_size; int fh_base; } ;
struct svc_fh {TYPE_1__ fh_handle; } ;
struct nfsd4_compoundres {struct xdr_stream xdr; } ;
typedef int __be32 ;


 int nfserr_resource ;
 int * xdr_encode_opaque (int *,int *,unsigned int) ;
 int * xdr_reserve_space (struct xdr_stream*,unsigned int) ;

__attribute__((used)) static __be32
nfsd4_encode_getfh(struct nfsd4_compoundres *resp, __be32 nfserr, struct svc_fh **fhpp)
{
 struct xdr_stream *xdr = &resp->xdr;
 struct svc_fh *fhp = *fhpp;
 unsigned int len;
 __be32 *p;

 len = fhp->fh_handle.fh_size;
 p = xdr_reserve_space(xdr, len + 4);
 if (!p)
  return nfserr_resource;
 p = xdr_encode_opaque(p, &fhp->fh_handle.fh_base, len);
 return 0;
}

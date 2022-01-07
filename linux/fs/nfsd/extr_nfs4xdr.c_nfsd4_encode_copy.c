
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_copy {int cp_synchronous; int cp_res; } ;
struct nfsd4_compoundres {int xdr; } ;
typedef scalar_t__ __be32 ;


 int cpu_to_be32 (int ) ;
 scalar_t__ nfsd42_encode_write_res (struct nfsd4_compoundres*,int *,int ) ;
 int xdr_one ;
 scalar_t__* xdr_reserve_space (int *,int) ;

__attribute__((used)) static __be32
nfsd4_encode_copy(struct nfsd4_compoundres *resp, __be32 nfserr,
    struct nfsd4_copy *copy)
{
 __be32 *p;

 nfserr = nfsd42_encode_write_res(resp, &copy->cp_res,
   copy->cp_synchronous);
 if (nfserr)
  return nfserr;

 p = xdr_reserve_space(&resp->xdr, 4 + 4);
 *p++ = xdr_one;
 *p++ = cpu_to_be32(copy->cp_synchronous);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct nfs4_secinfo_res {TYPE_1__* flavors; } ;
struct nfs4_secinfo4 {void* flavor; } ;
typedef int __be32 ;
struct TYPE_2__ {int num_flavors; struct nfs4_secinfo4* flavors; } ;


 int EIO ;
 int PAGE_SIZE ;
 void* RPC_AUTH_GSS ;
 void* be32_to_cpup (int *) ;
 int decode_secinfo_gss (struct xdr_stream*,struct nfs4_secinfo4*) ;
 scalar_t__ unlikely (int) ;
 int * xdr_inline_decode (struct xdr_stream*,int) ;

__attribute__((used)) static int decode_secinfo_common(struct xdr_stream *xdr, struct nfs4_secinfo_res *res)
{
 struct nfs4_secinfo4 *sec_flavor;
 unsigned int i, num_flavors;
 int status;
 __be32 *p;

 p = xdr_inline_decode(xdr, 4);
 if (unlikely(!p))
  return -EIO;

 res->flavors->num_flavors = 0;
 num_flavors = be32_to_cpup(p);

 for (i = 0; i < num_flavors; i++) {
  sec_flavor = &res->flavors->flavors[i];
  if ((char *)&sec_flavor[1] - (char *)res->flavors > PAGE_SIZE)
   break;

  p = xdr_inline_decode(xdr, 4);
  if (unlikely(!p))
   return -EIO;
  sec_flavor->flavor = be32_to_cpup(p);

  if (sec_flavor->flavor == RPC_AUTH_GSS) {
   status = decode_secinfo_gss(xdr, sec_flavor);
   if (status)
    goto out;
  }
  res->flavors->num_flavors++;
 }

 status = 0;
out:
 return status;
}

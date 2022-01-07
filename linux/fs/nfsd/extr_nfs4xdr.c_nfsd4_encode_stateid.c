
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct TYPE_3__ {int si_opaque; int si_generation; } ;
typedef TYPE_1__ stateid_t ;
typedef int stateid_opaque_t ;
typedef int __be32 ;


 int cpu_to_be32 (int ) ;
 int nfserr_resource ;
 int * xdr_encode_opaque_fixed (int *,int *,int) ;
 int * xdr_reserve_space (struct xdr_stream*,int) ;

__attribute__((used)) static __be32
nfsd4_encode_stateid(struct xdr_stream *xdr, stateid_t *sid)
{
 __be32 *p;

 p = xdr_reserve_space(xdr, sizeof(stateid_t));
 if (!p)
  return nfserr_resource;
 *p++ = cpu_to_be32(sid->si_generation);
 p = xdr_encode_opaque_fixed(p, &sid->si_opaque,
     sizeof(stateid_opaque_t));
 return 0;
}

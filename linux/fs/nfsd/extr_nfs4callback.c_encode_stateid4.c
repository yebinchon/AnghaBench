
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct TYPE_3__ {int si_opaque; int si_generation; } ;
typedef TYPE_1__ stateid_t ;
typedef int __be32 ;


 int NFS4_STATEID_OTHER_SIZE ;
 int NFS4_STATEID_SIZE ;
 int cpu_to_be32 (int ) ;
 int xdr_encode_opaque_fixed (int *,int *,int ) ;
 int * xdr_reserve_space (struct xdr_stream*,int ) ;

__attribute__((used)) static void encode_stateid4(struct xdr_stream *xdr, const stateid_t *sid)
{
 __be32 *p;

 p = xdr_reserve_space(xdr, NFS4_STATEID_SIZE);
 *p++ = cpu_to_be32(sid->si_generation);
 xdr_encode_opaque_fixed(p, &sid->si_opaque, NFS4_STATEID_OTHER_SIZE);
}

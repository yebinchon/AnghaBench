
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
typedef int __be32 ;


 int NFS3_CREATEVERFSIZE ;
 int memcpy (int *,int const*,int ) ;
 int * xdr_reserve_space (struct xdr_stream*,int ) ;

__attribute__((used)) static void encode_createverf3(struct xdr_stream *xdr, const __be32 *verifier)
{
 __be32 *p;

 p = xdr_reserve_space(xdr, NFS3_CREATEVERFSIZE);
 memcpy(p, verifier, NFS3_CREATEVERFSIZE);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __be32 ;


 int cpu_to_be32 (unsigned int) ;
 int * xdr_encode_opaque_fixed (int *,void const*,unsigned int) ;

__be32 *xdr_encode_opaque(__be32 *p, const void *ptr, unsigned int nbytes)
{
 *p++ = cpu_to_be32(nbytes);
 return xdr_encode_opaque_fixed(p, ptr, nbytes);
}

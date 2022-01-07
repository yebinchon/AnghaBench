
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __be32 ;


 int xdr_zero ;

__attribute__((used)) static __be32 *xdr_encode_empty_array(__be32 *p)
{
 *p++ = xdr_zero;
 return p;
}

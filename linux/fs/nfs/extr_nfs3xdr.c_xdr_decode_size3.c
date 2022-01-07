
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int __be32 ;


 int * xdr_decode_hyper (int *,int *) ;

__attribute__((used)) static __be32 *xdr_decode_size3(__be32 *p, u64 *size)
{
 return xdr_decode_hyper(p, size);
}

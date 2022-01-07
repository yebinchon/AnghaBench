
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int __be32 ;


 int * xdr_encode_hyper (int *,int ) ;

__attribute__((used)) static __be32 *xdr_encode_cookie3(__be32 *p, u64 cookie)
{
 return xdr_encode_hyper(p, cookie);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_netobj {int dummy; } ;
typedef int __be32 ;


 int * xdr_encode_netobj (int *,struct xdr_netobj*) ;

__attribute__((used)) static inline __be32 *
nlm_encode_oh(__be32 *p, struct xdr_netobj *oh)
{
 return xdr_encode_netobj(p, oh);
}

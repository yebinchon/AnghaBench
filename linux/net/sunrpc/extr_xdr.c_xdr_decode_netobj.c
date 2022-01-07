
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct xdr_netobj {unsigned int len; int * data; } ;
typedef int __be32 ;


 unsigned int XDR_MAX_NETOBJ ;
 int XDR_QUADLEN (unsigned int) ;
 unsigned int be32_to_cpu (int ) ;

__be32 *
xdr_decode_netobj(__be32 *p, struct xdr_netobj *obj)
{
 unsigned int len;

 if ((len = be32_to_cpu(*p++)) > XDR_MAX_NETOBJ)
  return ((void*)0);
 obj->len = len;
 obj->data = (u8 *) p;
 return p + XDR_QUADLEN(len);
}

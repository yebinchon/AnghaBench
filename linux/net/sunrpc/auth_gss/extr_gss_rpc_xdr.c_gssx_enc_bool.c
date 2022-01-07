
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
typedef int __be32 ;


 int ENOSPC ;
 scalar_t__ unlikely (int ) ;
 int xdr_one ;
 int * xdr_reserve_space (struct xdr_stream*,int) ;
 int xdr_zero ;

__attribute__((used)) static int gssx_enc_bool(struct xdr_stream *xdr, int v)
{
 __be32 *p;

 p = xdr_reserve_space(xdr, 4);
 if (unlikely(p == ((void*)0)))
  return -ENOSPC;
 *p = v ? xdr_one : xdr_zero;
 return 0;
}

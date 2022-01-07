
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
typedef int __be32 ;


 int EMSGSIZE ;
 scalar_t__ unlikely (int) ;
 int * xdr_reserve_space (struct xdr_stream*,int) ;
 int xdr_zero ;

__attribute__((used)) static inline int
encode_item_not_present(struct xdr_stream *xdr)
{
 __be32 *p;

 p = xdr_reserve_space(xdr, sizeof(*p));
 if (unlikely(!p))
  return -EMSGSIZE;

 *p = xdr_zero;
 return 0;
}

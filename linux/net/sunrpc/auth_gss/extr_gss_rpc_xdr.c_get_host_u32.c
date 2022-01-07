
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xdr_stream {int dummy; } ;
typedef int __be32 ;


 int EINVAL ;
 int memcpy (int *,int *,int) ;
 int * xdr_inline_decode (struct xdr_stream*,int) ;

__attribute__((used)) static int get_host_u32(struct xdr_stream *xdr, u32 *res)
{
 __be32 *p;

 p = xdr_inline_decode(xdr, 4);
 if (!p)
  return -EINVAL;

 memcpy(res, p, sizeof(u32));
 return 0;
}

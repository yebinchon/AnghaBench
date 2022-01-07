
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct xdr_stream {int dummy; } ;
typedef int __be32 ;


 scalar_t__ strlen (char const*) ;
 int xdr_encode_opaque (int *,char const*,scalar_t__ const) ;
 int * xdr_reserve_space (struct xdr_stream*,scalar_t__ const) ;

__attribute__((used)) static void encode_mntdirpath(struct xdr_stream *xdr, const char *pathname)
{
 const u32 pathname_len = strlen(pathname);
 __be32 *p;

 p = xdr_reserve_space(xdr, 4 + pathname_len);
 xdr_encode_opaque(p, pathname, pathname_len);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct xdr_stream {int dummy; } ;
typedef int __be32 ;


 scalar_t__ strlen (char const*) ;
 int xdr_encode_opaque (int *,char const*,scalar_t__) ;
 int * xdr_reserve_space (struct xdr_stream*,scalar_t__) ;

__attribute__((used)) static void encode_caller_name(struct xdr_stream *xdr, const char *name)
{

 u32 length = strlen(name);
 __be32 *p;

 p = xdr_reserve_space(xdr, 4 + length);
 xdr_encode_opaque(p, name, length);
}

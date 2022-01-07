
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

__attribute__((used)) static void encode_nsm_string(struct xdr_stream *xdr, const char *string)
{
 const u32 len = strlen(string);
 __be32 *p;

 p = xdr_reserve_space(xdr, 4 + len);
 xdr_encode_opaque(p, string, len);
}

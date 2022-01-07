
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xdr_stream {int dummy; } ;
typedef int __be32 ;


 int nfserr_resource ;
 int sprintf (char*,char*,int) ;
 int * xdr_encode_opaque (int *,char*,int) ;
 int * xdr_reserve_space (struct xdr_stream*,int) ;

__attribute__((used)) static __be32 encode_ascii_id(struct xdr_stream *xdr, u32 id)
{
 char buf[11];
 int len;
 __be32 *p;

 len = sprintf(buf, "%u", id);
 p = xdr_reserve_space(xdr, len + 4);
 if (!p)
  return nfserr_resource;
 p = xdr_encode_opaque(p, buf, len);
 return 0;
}

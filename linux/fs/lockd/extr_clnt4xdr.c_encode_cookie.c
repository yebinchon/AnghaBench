
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct xdr_stream {int dummy; } ;
struct nlm_cookie {int len; int data; } ;


 int encode_netobj (struct xdr_stream*,int *,int ) ;

__attribute__((used)) static void encode_cookie(struct xdr_stream *xdr,
     const struct nlm_cookie *cookie)
{
 encode_netobj(xdr, (u8 *)&cookie->data, cookie->len);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfs4_string {scalar_t__ len; int data; } ;
typedef scalar_t__ ssize_t ;
typedef int gfp_t ;


 int XDR_MAX_NETOBJ ;
 scalar_t__ xdr_stream_decode_string_dup (struct xdr_stream*,int *,int ,int ) ;

__attribute__((used)) static ssize_t decode_nfs4_string(struct xdr_stream *xdr,
  struct nfs4_string *name, gfp_t gfp_flags)
{
 ssize_t ret;

 ret = xdr_stream_decode_string_dup(xdr, &name->data,
   XDR_MAX_NETOBJ, gfp_flags);
 name->len = 0;
 if (ret > 0)
  name->len = ret;
 return ret;
}

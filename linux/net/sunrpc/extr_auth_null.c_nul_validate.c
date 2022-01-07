
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct rpc_task {int dummy; } ;
typedef scalar_t__ __be32 ;


 int EIO ;
 scalar_t__ rpc_auth_null ;
 scalar_t__* xdr_inline_decode (struct xdr_stream*,int) ;
 scalar_t__ xdr_zero ;

__attribute__((used)) static int
nul_validate(struct rpc_task *task, struct xdr_stream *xdr)
{
 __be32 *p;

 p = xdr_inline_decode(xdr, 2 * sizeof(*p));
 if (!p)
  return -EIO;
 if (*p++ != rpc_auth_null)
  return -EIO;
 if (*p != xdr_zero)
  return -EIO;
 return 0;
}

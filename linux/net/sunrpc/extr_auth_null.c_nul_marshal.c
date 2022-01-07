
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct rpc_task {int dummy; } ;
typedef void* __be32 ;


 int EMSGSIZE ;
 void* rpc_auth_null ;
 void** xdr_reserve_space (struct xdr_stream*,int) ;
 void* xdr_zero ;

__attribute__((used)) static int
nul_marshal(struct rpc_task *task, struct xdr_stream *xdr)
{
 __be32 *p;

 p = xdr_reserve_space(xdr, 4 * sizeof(*p));
 if (!p)
  return -EMSGSIZE;

 *p++ = rpc_auth_null;
 *p++ = xdr_zero;

 *p++ = rpc_auth_null;
 *p = xdr_zero;
 return 0;
}

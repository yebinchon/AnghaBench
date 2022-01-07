
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_netobj {int data; } ;
struct rpc_gss_wire_cred {int dummy; } ;
struct kvec {int dummy; } ;
typedef int __be32 ;


 int SVC_CLOSE ;
 int SVC_DENIED ;
 scalar_t__ dup_netobj (struct xdr_netobj*,struct xdr_netobj*) ;
 int gss_read_common_verf (struct rpc_gss_wire_cred*,struct kvec*,int *,struct xdr_netobj*) ;
 int kfree (int ) ;
 scalar_t__ svc_safe_getnetobj (struct kvec*,struct xdr_netobj*) ;

__attribute__((used)) static inline int
gss_read_verf(struct rpc_gss_wire_cred *gc,
       struct kvec *argv, __be32 *authp,
       struct xdr_netobj *in_handle,
       struct xdr_netobj *in_token)
{
 struct xdr_netobj tmpobj;
 int res;

 res = gss_read_common_verf(gc, argv, authp, in_handle);
 if (res)
  return res;

 if (svc_safe_getnetobj(argv, &tmpobj)) {
  kfree(in_handle->data);
  return SVC_DENIED;
 }
 if (dup_netobj(in_token, &tmpobj)) {
  kfree(in_handle->data);
  return SVC_CLOSE;
 }

 return 0;
}

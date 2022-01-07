
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int ud ;
typedef int u8 ;
struct xdr_netobj {int len; int * data; } ;
struct TYPE_2__ {struct kvec* head; } ;
struct svc_rqst {TYPE_1__ rq_res; } ;
struct sunrpc_net {int rsc_cache; } ;
struct rpc_gss_wire_cred {int dummy; } ;
struct net {int dummy; } ;
struct kvec {int dummy; } ;
struct gssp_upcall_data {int major_status; int minor_status; int out_token; struct xdr_netobj out_handle; int in_token; int in_handle; } ;
typedef int handle ;
typedef int __be32 ;




 int PAGE_SIZE ;
 int SVC_CLOSE ;
 int SVC_COMPLETE ;
 struct net* SVC_NET (struct svc_rqst*) ;
 int dprintk (char*,int,int ) ;
 int gss_proxy_save_rsc (int ,struct gssp_upcall_data*,int *) ;
 int gss_read_proxy_verf (struct svc_rqst*,struct rpc_gss_wire_cred*,int *,int *,int *) ;
 scalar_t__ gss_write_init_verf (int ,struct svc_rqst*,struct xdr_netobj*,int*) ;
 scalar_t__ gss_write_resv (struct kvec*,int ,struct xdr_netobj*,int *,int,int ) ;
 int gssp_accept_sec_context_upcall (struct net*,struct gssp_upcall_data*) ;
 int gssp_free_upcall_data (struct gssp_upcall_data*) ;
 int memset (struct gssp_upcall_data*,int ,int) ;
 struct sunrpc_net* net_generic (struct net*,int ) ;
 int sunrpc_net_id ;

__attribute__((used)) static int svcauth_gss_proxy_init(struct svc_rqst *rqstp,
   struct rpc_gss_wire_cred *gc, __be32 *authp)
{
 struct kvec *resv = &rqstp->rq_res.head[0];
 struct xdr_netobj cli_handle;
 struct gssp_upcall_data ud;
 uint64_t handle;
 int status;
 int ret;
 struct net *net = SVC_NET(rqstp);
 struct sunrpc_net *sn = net_generic(net, sunrpc_net_id);

 memset(&ud, 0, sizeof(ud));
 ret = gss_read_proxy_verf(rqstp, gc, authp,
      &ud.in_handle, &ud.in_token);
 if (ret)
  return ret;

 ret = SVC_CLOSE;


 status = gssp_accept_sec_context_upcall(net, &ud);
 if (status)
  goto out;

 dprintk("RPC:       svcauth_gss: gss major status = %d "
   "minor status = %d\n",
   ud.major_status, ud.minor_status);

 switch (ud.major_status) {
 case 128:
  cli_handle = ud.out_handle;
  break;
 case 129:
  status = gss_proxy_save_rsc(sn->rsc_cache, &ud, &handle);
  if (status)
   goto out;
  cli_handle.data = (u8 *)&handle;
  cli_handle.len = sizeof(handle);
  break;
 default:
  ret = SVC_CLOSE;
  goto out;
 }


 if (gss_write_init_verf(sn->rsc_cache, rqstp,
    &cli_handle, &ud.major_status))
  goto out;
 if (gss_write_resv(resv, PAGE_SIZE,
      &cli_handle, &ud.out_token,
      ud.major_status, ud.minor_status))
  goto out;

 ret = SVC_COMPLETE;
out:
 gssp_free_upcall_data(&ud);
 return ret;
}

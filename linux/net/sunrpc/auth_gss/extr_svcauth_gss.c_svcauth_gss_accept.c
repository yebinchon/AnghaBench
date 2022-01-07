
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_11__ {int cr_flavor; int cr_group_info; } ;
struct TYPE_12__ {struct kvec* head; } ;
struct TYPE_10__ {struct kvec* head; } ;
struct svc_rqst {scalar_t__ rq_proc; int rq_auth_slack; TYPE_2__ rq_cred; TYPE_3__ rq_arg; struct gss_svc_data* rq_auth_data; TYPE_1__ rq_res; } ;
struct sunrpc_net {int rsc_cache; } ;
struct rsc {int h; TYPE_4__* mechctx; TYPE_2__ cred; } ;
struct TYPE_14__ {int len; } ;
struct rpc_gss_wire_cred {int gc_proc; scalar_t__ gc_svc; scalar_t__ gc_seq; TYPE_7__ gc_ctx; } ;
struct kvec {int iov_len; int * iov_base; } ;
struct gss_svc_data {struct rsc* rsci; int * verf_start; struct rpc_gss_wire_cred clcred; } ;
typedef int __be32 ;
struct TYPE_13__ {int mech_type; } ;


 int GFP_KERNEL ;
 int GSS_C_QOP_DEFAULT ;
 int PAGE_SIZE ;







 scalar_t__ RPC_GSS_VERSION ;
 int RPC_MAX_AUTH_SIZE ;
 int RPC_SUCCESS ;
 int SVC_CLOSE ;
 int SVC_COMPLETE ;


 int SVC_GARBAGE ;
 int SVC_NET (struct svc_rqst*) ;

 int cache_get (int *) ;
 int cache_put (int *,int ) ;
 int dprintk (char*,int) ;
 int get_group_info (int ) ;
 struct rsc* gss_svc_searchbyctx (int ,TYPE_7__*) ;
 int gss_svc_to_pseudoflavor (int ,int ,scalar_t__) ;
 int gss_verify_header (struct svc_rqst*,struct rsc*,int *,struct rpc_gss_wire_cred*,int *) ;
 int gss_write_verf (struct svc_rqst*,TYPE_4__*,scalar_t__) ;
 struct gss_svc_data* kmalloc (int,int ) ;
 struct sunrpc_net* net_generic (int ,int ) ;
 scalar_t__ round_up_to_quad (int ) ;
 int rpc_autherr_badcred ;
 int rpc_autherr_badverf ;
 int rpc_autherr_rejectedcred ;
 int rpcsec_gsserr_credproblem ;
 int rpcsec_gsserr_ctxproblem ;
 int sunrpc_cache_unhash (int ,int *) ;
 int sunrpc_net_id ;
 scalar_t__ svc_getnl (struct kvec*) ;
 int svc_putnl (struct kvec*,int ) ;
 scalar_t__ svc_safe_getnetobj (struct kvec*,TYPE_7__*) ;
 int svcauth_gss_legacy_init (struct svc_rqst*,struct rpc_gss_wire_cred*,int *) ;
 int svcauth_gss_proxy_init (struct svc_rqst*,struct rpc_gss_wire_cred*,int *) ;
 int unwrap_integ_data (struct svc_rqst*,TYPE_3__*,scalar_t__,TYPE_4__*) ;
 int unwrap_priv_data (struct svc_rqst*,TYPE_3__*,scalar_t__,TYPE_4__*) ;
 int use_gss_proxy (int ) ;
 int xdr_ressize_check (struct svc_rqst*,int *) ;

__attribute__((used)) static int
svcauth_gss_accept(struct svc_rqst *rqstp, __be32 *authp)
{
 struct kvec *argv = &rqstp->rq_arg.head[0];
 struct kvec *resv = &rqstp->rq_res.head[0];
 u32 crlen;
 struct gss_svc_data *svcdata = rqstp->rq_auth_data;
 struct rpc_gss_wire_cred *gc;
 struct rsc *rsci = ((void*)0);
 __be32 *rpcstart;
 __be32 *reject_stat = resv->iov_base + resv->iov_len;
 int ret;
 struct sunrpc_net *sn = net_generic(SVC_NET(rqstp), sunrpc_net_id);

 dprintk("RPC:       svcauth_gss: argv->iov_len = %zd\n",
   argv->iov_len);

 *authp = rpc_autherr_badcred;
 if (!svcdata)
  svcdata = kmalloc(sizeof(*svcdata), GFP_KERNEL);
 if (!svcdata)
  goto auth_err;
 rqstp->rq_auth_data = svcdata;
 svcdata->verf_start = ((void*)0);
 svcdata->rsci = ((void*)0);
 gc = &svcdata->clcred;




 rpcstart = argv->iov_base;
 rpcstart -= 7;






 if (argv->iov_len < 5 * 4)
  goto auth_err;
 crlen = svc_getnl(argv);
 if (svc_getnl(argv) != RPC_GSS_VERSION)
  goto auth_err;
 gc->gc_proc = svc_getnl(argv);
 gc->gc_seq = svc_getnl(argv);
 gc->gc_svc = svc_getnl(argv);
 if (svc_safe_getnetobj(argv, &gc->gc_ctx))
  goto auth_err;
 if (crlen != round_up_to_quad(gc->gc_ctx.len) + 5 * 4)
  goto auth_err;

 if ((gc->gc_proc != 136) && (rqstp->rq_proc != 0))
  goto auth_err;

 *authp = rpc_autherr_badverf;
 switch (gc->gc_proc) {
 case 134:
 case 137:
  if (use_gss_proxy(SVC_NET(rqstp)))
   return svcauth_gss_proxy_init(rqstp, gc, authp);
  else
   return svcauth_gss_legacy_init(rqstp, gc, authp);
 case 136:
 case 135:

  *authp = rpcsec_gsserr_credproblem;
  rsci = gss_svc_searchbyctx(sn->rsc_cache, &gc->gc_ctx);
  if (!rsci)
   goto auth_err;
  switch (gss_verify_header(rqstp, rsci, rpcstart, gc, authp)) {
  case 128:
   break;
  case 130:
   goto auth_err;
  case 129:
   goto drop;
  }
  break;
 default:
  *authp = rpc_autherr_rejectedcred;
  goto auth_err;
 }


 switch (gc->gc_proc) {
 case 135:
  if (gss_write_verf(rqstp, rsci->mechctx, gc->gc_seq))
   goto auth_err;

  sunrpc_cache_unhash(sn->rsc_cache, &rsci->h);
  if (resv->iov_len + 4 > PAGE_SIZE)
   goto drop;
  svc_putnl(resv, RPC_SUCCESS);
  goto complete;
 case 136:
  *authp = rpcsec_gsserr_ctxproblem;
  svcdata->verf_start = resv->iov_base + resv->iov_len;
  if (gss_write_verf(rqstp, rsci->mechctx, gc->gc_seq))
   goto auth_err;
  rqstp->rq_cred = rsci->cred;
  get_group_info(rsci->cred.cr_group_info);
  *authp = rpc_autherr_badcred;
  switch (gc->gc_svc) {
  case 132:
   break;
  case 133:

   svc_putnl(resv, 0);
   svc_putnl(resv, 0);
   if (unwrap_integ_data(rqstp, &rqstp->rq_arg,
     gc->gc_seq, rsci->mechctx))
    goto garbage_args;
   rqstp->rq_auth_slack = RPC_MAX_AUTH_SIZE;
   break;
  case 131:

   svc_putnl(resv, 0);
   svc_putnl(resv, 0);
   if (unwrap_priv_data(rqstp, &rqstp->rq_arg,
     gc->gc_seq, rsci->mechctx))
    goto garbage_args;
   rqstp->rq_auth_slack = RPC_MAX_AUTH_SIZE * 2;
   break;
  default:
   goto auth_err;
  }
  svcdata->rsci = rsci;
  cache_get(&rsci->h);
  rqstp->rq_cred.cr_flavor = gss_svc_to_pseudoflavor(
     rsci->mechctx->mech_type,
     GSS_C_QOP_DEFAULT,
     gc->gc_svc);
  ret = 128;
  goto out;
 }
garbage_args:
 ret = SVC_GARBAGE;
 goto out;
auth_err:

 xdr_ressize_check(rqstp, reject_stat);
 ret = 130;
 goto out;
complete:
 ret = SVC_COMPLETE;
 goto out;
drop:
 ret = SVC_CLOSE;
out:
 if (rsci)
  cache_put(&rsci->h, sn->rsc_cache);
 return ret;
}

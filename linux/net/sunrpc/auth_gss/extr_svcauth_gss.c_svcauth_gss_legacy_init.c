
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct kvec* head; } ;
struct TYPE_3__ {struct kvec* head; } ;
struct svc_rqst {int rq_chandle; TYPE_2__ rq_res; TYPE_1__ rq_arg; } ;
struct sunrpc_net {int rsi_cache; int rsc_cache; } ;
struct rsi {int h; int minor_status; int major_status; int out_token; int out_handle; int in_token; int in_handle; } ;
struct rpc_gss_wire_cred {int dummy; } ;
struct kvec {int dummy; } ;
typedef int rsikey ;
typedef int __be32 ;


 int PAGE_SIZE ;
 int SVC_CLOSE ;
 int SVC_COMPLETE ;
 int SVC_NET (struct svc_rqst*) ;
 scalar_t__ cache_check (int ,int *,int *) ;
 int cache_put (int *,int ) ;
 int gss_read_verf (struct rpc_gss_wire_cred*,struct kvec*,int *,int *,int *) ;
 scalar_t__ gss_write_init_verf (int ,struct svc_rqst*,int *,int *) ;
 scalar_t__ gss_write_resv (struct kvec*,int ,int *,int *,int ,int ) ;
 int memset (struct rsi*,int ,int) ;
 struct sunrpc_net* net_generic (int ,int ) ;
 int rsi_free (struct rsi*) ;
 struct rsi* rsi_lookup (int ,struct rsi*) ;
 int sunrpc_net_id ;

__attribute__((used)) static int svcauth_gss_legacy_init(struct svc_rqst *rqstp,
   struct rpc_gss_wire_cred *gc, __be32 *authp)
{
 struct kvec *argv = &rqstp->rq_arg.head[0];
 struct kvec *resv = &rqstp->rq_res.head[0];
 struct rsi *rsip, rsikey;
 int ret;
 struct sunrpc_net *sn = net_generic(SVC_NET(rqstp), sunrpc_net_id);

 memset(&rsikey, 0, sizeof(rsikey));
 ret = gss_read_verf(gc, argv, authp,
       &rsikey.in_handle, &rsikey.in_token);
 if (ret)
  return ret;


 rsip = rsi_lookup(sn->rsi_cache, &rsikey);
 rsi_free(&rsikey);
 if (!rsip)
  return SVC_CLOSE;
 if (cache_check(sn->rsi_cache, &rsip->h, &rqstp->rq_chandle) < 0)

  return SVC_CLOSE;

 ret = SVC_CLOSE;

 if (gss_write_init_verf(sn->rsc_cache, rqstp,
    &rsip->out_handle, &rsip->major_status))
  goto out;
 if (gss_write_resv(resv, PAGE_SIZE,
      &rsip->out_handle, &rsip->out_token,
      rsip->major_status, rsip->minor_status))
  goto out;

 ret = SVC_COMPLETE;
out:
 cache_put(&rsip->h, sn->rsi_cache);
 return ret;
}

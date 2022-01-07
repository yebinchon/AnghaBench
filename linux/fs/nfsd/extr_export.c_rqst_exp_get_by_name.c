
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int rq_chandle; int * rq_gssclient; int * rq_client; } ;
struct svc_export {scalar_t__ ex_nflavors; } ;
struct path {int dummy; } ;
struct nfsd_net {struct cache_detail* svc_export_cache; } ;
struct cache_detail {int dummy; } ;


 int ENOENT ;
 struct svc_export* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct svc_export*) ;
 int PTR_ERR (struct svc_export*) ;
 int SVC_NET (struct svc_rqst*) ;
 struct svc_export* exp_get_by_name (struct cache_detail*,int *,struct path*,int *) ;
 int exp_put (struct svc_export*) ;
 struct nfsd_net* net_generic (int ,int ) ;
 int nfsd_net_id ;

struct svc_export *
rqst_exp_get_by_name(struct svc_rqst *rqstp, struct path *path)
{
 struct svc_export *gssexp, *exp = ERR_PTR(-ENOENT);
 struct nfsd_net *nn = net_generic(SVC_NET(rqstp), nfsd_net_id);
 struct cache_detail *cd = nn->svc_export_cache;

 if (rqstp->rq_client == ((void*)0))
  goto gss;


 exp = exp_get_by_name(cd, rqstp->rq_client, path, &rqstp->rq_chandle);
 if (PTR_ERR(exp) == -ENOENT)
  goto gss;
 if (IS_ERR(exp))
  return exp;

 if (exp->ex_nflavors > 0)
  return exp;
gss:

 if (rqstp->rq_gssclient == ((void*)0))
  return exp;
 gssexp = exp_get_by_name(cd, rqstp->rq_gssclient, path, &rqstp->rq_chandle);
 if (PTR_ERR(gssexp) == -ENOENT)
  return exp;
 if (!IS_ERR(exp))
  exp_put(exp);
 return gssexp;
}

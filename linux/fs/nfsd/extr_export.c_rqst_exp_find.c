
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct svc_rqst {int rq_chandle; int * rq_gssclient; int * rq_client; } ;
struct svc_export {scalar_t__ ex_nflavors; } ;
struct nfsd_net {struct cache_detail* svc_export_cache; } ;
struct cache_detail {int dummy; } ;


 int ENOENT ;
 struct svc_export* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct svc_export*) ;
 int PTR_ERR (struct svc_export*) ;
 int SVC_NET (struct svc_rqst*) ;
 struct svc_export* exp_find (struct cache_detail*,int *,int,int *,int *) ;
 int exp_put (struct svc_export*) ;
 struct nfsd_net* net_generic (int ,int ) ;
 int nfsd_net_id ;

struct svc_export *
rqst_exp_find(struct svc_rqst *rqstp, int fsid_type, u32 *fsidv)
{
 struct svc_export *gssexp, *exp = ERR_PTR(-ENOENT);
 struct nfsd_net *nn = net_generic(SVC_NET(rqstp), nfsd_net_id);
 struct cache_detail *cd = nn->svc_export_cache;

 if (rqstp->rq_client == ((void*)0))
  goto gss;


 exp = exp_find(cd, rqstp->rq_client, fsid_type,
         fsidv, &rqstp->rq_chandle);
 if (PTR_ERR(exp) == -ENOENT)
  goto gss;
 if (IS_ERR(exp))
  return exp;

 if (exp->ex_nflavors > 0)
  return exp;
gss:

 if (rqstp->rq_gssclient == ((void*)0))
  return exp;
 gssexp = exp_find(cd, rqstp->rq_gssclient, fsid_type, fsidv,
      &rqstp->rq_chandle);
 if (PTR_ERR(gssexp) == -ENOENT)
  return exp;
 if (!IS_ERR(exp))
  exp_put(exp);
 return gssexp;
}

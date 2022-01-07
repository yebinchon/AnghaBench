
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct svc_export {int h; int ek_path; } ;
struct svc_expkey {int h; int ek_path; } ;
struct nfsd_net {int svc_expkey_cache; } ;
struct cache_req {int dummy; } ;
struct cache_detail {int net; } ;
struct auth_domain {int dummy; } ;


 struct svc_export* ERR_CAST (struct svc_export*) ;
 scalar_t__ IS_ERR (struct svc_export*) ;
 int cache_put (int *,int ) ;
 struct svc_export* exp_find_key (int ,struct auth_domain*,int,int *,struct cache_req*) ;
 struct svc_export* exp_get_by_name (struct cache_detail*,struct auth_domain*,int *,struct cache_req*) ;
 struct nfsd_net* net_generic (int ,int ) ;
 int nfsd_net_id ;

__attribute__((used)) static struct svc_export *exp_find(struct cache_detail *cd,
       struct auth_domain *clp, int fsid_type,
       u32 *fsidv, struct cache_req *reqp)
{
 struct svc_export *exp;
 struct nfsd_net *nn = net_generic(cd->net, nfsd_net_id);
 struct svc_expkey *ek = exp_find_key(nn->svc_expkey_cache, clp, fsid_type, fsidv, reqp);
 if (IS_ERR(ek))
  return ERR_CAST(ek);

 exp = exp_get_by_name(cd, clp, &ek->ek_path, reqp);
 cache_put(&ek->h, nn->svc_expkey_cache);

 if (IS_ERR(exp))
  return ERR_CAST(exp);
 return exp;
}

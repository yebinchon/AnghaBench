
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct svc_rqst {int dummy; } ;
struct nfsd_net {int nametoid_cache; } ;
struct ent {int type; char* name; int id; int h; int authname; } ;
typedef int __be32 ;


 int ENOENT ;
 int SVC_NET (struct svc_rqst*) ;
 int cache_put (int *,int ) ;
 int idmap_lookup (struct svc_rqst*,int ,struct ent*,int ,struct ent**) ;
 int memcpy (char*,char const*,int) ;
 int nametoid_lookup ;
 struct nfsd_net* net_generic (int ,int ) ;
 int nfsd_net_id ;
 int nfserr_badowner ;
 int nfserrno (int) ;
 int rqst_authname (struct svc_rqst*) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static __be32
idmap_name_to_id(struct svc_rqst *rqstp, int type, const char *name, u32 namelen,
  u32 *id)
{
 struct ent *item, key = {
  .type = type,
 };
 int ret;
 struct nfsd_net *nn = net_generic(SVC_NET(rqstp), nfsd_net_id);

 if (namelen + 1 > sizeof(key.name))
  return nfserr_badowner;
 memcpy(key.name, name, namelen);
 key.name[namelen] = '\0';
 strlcpy(key.authname, rqst_authname(rqstp), sizeof(key.authname));
 ret = idmap_lookup(rqstp, nametoid_lookup, &key, nn->nametoid_cache, &item);
 if (ret == -ENOENT)
  return nfserr_badowner;
 if (ret)
  return nfserrno(ret);
 *id = item->id;
 cache_put(&item->h, nn->nametoid_cache);
 return 0;
}

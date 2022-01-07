
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xdr_stream {int dummy; } ;
struct svc_rqst {int dummy; } ;
struct nfsd_net {int idtoname_cache; } ;
struct ent {int type; int h; int name; int authname; int id; } ;
typedef int __be32 ;


 int ENOENT ;
 int IDMAP_NAMESZ ;
 int SVC_NET (struct svc_rqst*) ;
 int WARN_ON_ONCE (int) ;
 int cache_put (int *,int ) ;
 int encode_ascii_id (struct xdr_stream*,int ) ;
 int idmap_lookup (struct svc_rqst*,int ,struct ent*,int ,struct ent**) ;
 int idtoname_lookup ;
 struct nfsd_net* net_generic (int ,int ) ;
 int nfsd_net_id ;
 int nfserr_resource ;
 int nfserrno (int) ;
 int rqst_authname (struct svc_rqst*) ;
 int strlcpy (int ,int ,int) ;
 int strlen (int ) ;
 int * xdr_encode_opaque (int *,int ,int) ;
 int * xdr_reserve_space (struct xdr_stream*,int) ;

__attribute__((used)) static __be32 idmap_id_to_name(struct xdr_stream *xdr,
          struct svc_rqst *rqstp, int type, u32 id)
{
 struct ent *item, key = {
  .id = id,
  .type = type,
 };
 __be32 *p;
 int ret;
 struct nfsd_net *nn = net_generic(SVC_NET(rqstp), nfsd_net_id);

 strlcpy(key.authname, rqst_authname(rqstp), sizeof(key.authname));
 ret = idmap_lookup(rqstp, idtoname_lookup, &key, nn->idtoname_cache, &item);
 if (ret == -ENOENT)
  return encode_ascii_id(xdr, id);
 if (ret)
  return nfserrno(ret);
 ret = strlen(item->name);
 WARN_ON_ONCE(ret > IDMAP_NAMESZ);
 p = xdr_reserve_space(xdr, ret + 4);
 if (!p)
  return nfserr_resource;
 p = xdr_encode_opaque(p, item->name, ret);
 cache_put(&item->h, nn->idtoname_cache);
 return 0;
}

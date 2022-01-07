
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xdr_stream {int dummy; } ;
struct svc_rqst {int dummy; } ;
typedef int kuid_t ;
typedef int __be32 ;


 int IDMAP_TYPE_USER ;
 int encode_name_from_id (struct xdr_stream*,struct svc_rqst*,int ,int ) ;
 int from_kuid_munged (int ,int ) ;
 int nfsd_user_namespace (struct svc_rqst*) ;

__be32 nfsd4_encode_user(struct xdr_stream *xdr, struct svc_rqst *rqstp,
    kuid_t uid)
{
 u32 id = from_kuid_munged(nfsd_user_namespace(rqstp), uid);
 return encode_name_from_id(xdr, rqstp, IDMAP_TYPE_USER, id);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct svc_rqst {int dummy; } ;
typedef int kgid_t ;
typedef int __be32 ;


 int IDMAP_TYPE_GROUP ;
 int do_name_to_id (struct svc_rqst*,int ,char const*,size_t,int*) ;
 int gid_valid (int ) ;
 int make_kgid (int ,int) ;
 int nfsd_user_namespace (struct svc_rqst*) ;
 int nfserr_badowner ;
 int nfserr_inval ;

__be32
nfsd_map_name_to_gid(struct svc_rqst *rqstp, const char *name, size_t namelen,
  kgid_t *gid)
{
 __be32 status;
 u32 id = -1;

 if (name == ((void*)0) || namelen == 0)
  return nfserr_inval;

 status = do_name_to_id(rqstp, IDMAP_TYPE_GROUP, name, namelen, &id);
 *gid = make_kgid(nfsd_user_namespace(rqstp), id);
 if (!gid_valid(*gid))
  status = nfserr_badowner;
 return status;
}

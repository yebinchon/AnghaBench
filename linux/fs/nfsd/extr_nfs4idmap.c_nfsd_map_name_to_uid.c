
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct svc_rqst {int dummy; } ;
typedef int kuid_t ;
typedef int __be32 ;


 int IDMAP_TYPE_USER ;
 int do_name_to_id (struct svc_rqst*,int ,char const*,size_t,int*) ;
 int make_kuid (int ,int) ;
 int nfsd_user_namespace (struct svc_rqst*) ;
 int nfserr_badowner ;
 int nfserr_inval ;
 int uid_valid (int ) ;

__be32
nfsd_map_name_to_uid(struct svc_rqst *rqstp, const char *name, size_t namelen,
  kuid_t *uid)
{
 __be32 status;
 u32 id = -1;

 if (name == ((void*)0) || namelen == 0)
  return nfserr_inval;

 status = do_name_to_id(rqstp, IDMAP_TYPE_USER, name, namelen, &id);
 *uid = make_kuid(nfsd_user_namespace(rqstp), id);
 if (!uid_valid(*uid))
  status = nfserr_badowner;
 return status;
}

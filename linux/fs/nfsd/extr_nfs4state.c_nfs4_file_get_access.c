
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfs4_file {int fi_share_deny; int fi_lock; } ;
typedef int __be32 ;


 int NFS4_SHARE_ACCESS_BOTH ;
 int __nfs4_file_get_access (struct nfs4_file*,int) ;
 int lockdep_assert_held (int *) ;
 int nfs_ok ;
 int nfserr_inval ;
 int nfserr_share_denied ;

__attribute__((used)) static __be32
nfs4_file_get_access(struct nfs4_file *fp, u32 access)
{
 lockdep_assert_held(&fp->fi_lock);


 if (access & ~NFS4_SHARE_ACCESS_BOTH)
  return nfserr_inval;


 if ((access & fp->fi_share_deny) != 0)
  return nfserr_share_denied;

 __nfs4_file_get_access(fp, access);
 return nfs_ok;
}

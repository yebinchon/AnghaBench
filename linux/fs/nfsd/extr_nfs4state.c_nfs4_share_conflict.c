
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_fh {int fh_handle; } ;
struct nfs4_file {unsigned int fi_share_deny; int fi_lock; } ;
typedef int __be32 ;


 struct nfs4_file* find_file (int *) ;
 int nfs_ok ;
 int nfserr_locked ;
 int put_nfs4_file (struct nfs4_file*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static __be32
nfs4_share_conflict(struct svc_fh *current_fh, unsigned int deny_type)
{
 struct nfs4_file *fp;
 __be32 ret = nfs_ok;

 fp = find_file(&current_fh->fh_handle);
 if (!fp)
  return ret;

 spin_lock(&fp->fi_lock);
 if (fp->fi_share_deny & deny_type)
  ret = nfserr_locked;
 spin_unlock(&fp->fi_lock);
 put_nfs4_file(fp);
 return ret;
}

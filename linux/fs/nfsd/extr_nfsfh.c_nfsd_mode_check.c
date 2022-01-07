
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ umode_t ;
struct svc_rqst {int rq_vers; } ;
struct dentry {int dummy; } ;
typedef int __be32 ;
struct TYPE_2__ {scalar_t__ i_mode; } ;


 scalar_t__ S_IFDIR ;
 scalar_t__ S_IFLNK ;
 scalar_t__ S_IFMT ;
 int WARN_ON_ONCE (int) ;
 int d_can_lookup (struct dentry*) ;
 TYPE_1__* d_inode (struct dentry*) ;
 int nfs_ok ;
 int nfserr_inval ;
 int nfserr_isdir ;
 int nfserr_notdir ;
 int nfserr_symlink ;

__attribute__((used)) static inline __be32
nfsd_mode_check(struct svc_rqst *rqstp, struct dentry *dentry,
  umode_t requested)
{
 umode_t mode = d_inode(dentry)->i_mode & S_IFMT;

 if (requested == 0)
  return nfs_ok;
 if (mode == requested) {
  if (mode == S_IFDIR && !d_can_lookup(dentry)) {
   WARN_ON_ONCE(1);
   return nfserr_notdir;
  }
  return nfs_ok;
 }




 if (rqstp->rq_vers == 4 && mode == S_IFLNK)
  return nfserr_symlink;
 if (requested == S_IFDIR)
  return nfserr_notdir;
 if (mode == S_IFDIR)
  return nfserr_isdir;
 return nfserr_inval;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;
struct dentry {int dummy; } ;


 struct dentry* ERR_CAST (struct vfsmount*) ;
 struct dentry* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct vfsmount*) ;
 int mntput (struct vfsmount*) ;
 struct dentry* mount_subtree (struct vfsmount*,char const*) ;
 int nfs_referral_loop_protect () ;
 int nfs_referral_loop_unprotect () ;

__attribute__((used)) static struct dentry *nfs_follow_remote_path(struct vfsmount *root_mnt,
  const char *export_path)
{
 struct dentry *dentry;
 int err;

 if (IS_ERR(root_mnt))
  return ERR_CAST(root_mnt);

 err = nfs_referral_loop_protect();
 if (err) {
  mntput(root_mnt);
  return ERR_PTR(err);
 }

 dentry = mount_subtree(root_mnt, export_path);
 nfs_referral_loop_unprotect();

 return dentry;
}

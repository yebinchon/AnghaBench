
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int mnt_root; } ;
struct dentry {int dummy; } ;


 int d_is_dir (struct dentry*) ;
 scalar_t__ d_unhashed (struct dentry*) ;
 int is_subdir (struct dentry*,int ) ;

__attribute__((used)) static int ovl_acceptable(void *ctx, struct dentry *dentry)
{




 if (!d_is_dir(dentry))
  return 1;


 if (d_unhashed(dentry))
  return 0;


 return is_subdir(dentry, ((struct vfsmount *)ctx)->mnt_root);
}

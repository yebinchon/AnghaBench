
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct path {int dummy; } ;
struct ovl_fs {int namelen; } ;
struct kstatfs {int f_type; int f_namelen; } ;
struct dentry {TYPE_1__* d_sb; } ;
struct TYPE_2__ {struct dentry* s_root; struct ovl_fs* s_fs_info; } ;


 int OVERLAYFS_SUPER_MAGIC ;
 int ovl_path_real (struct dentry*,struct path*) ;
 int vfs_statfs (struct path*,struct kstatfs*) ;

__attribute__((used)) static int ovl_statfs(struct dentry *dentry, struct kstatfs *buf)
{
 struct ovl_fs *ofs = dentry->d_sb->s_fs_info;
 struct dentry *root_dentry = dentry->d_sb->s_root;
 struct path path;
 int err;

 ovl_path_real(root_dentry, &path);

 err = vfs_statfs(&path, buf);
 if (!err) {
  buf->f_namelen = ofs->namelen;
  buf->f_type = OVERLAYFS_SUPER_MAGIC;
 }

 return err;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct path_cond {int mode; int uid; } ;
struct path {int dummy; } ;
struct inode {int i_mode; int i_uid; } ;
struct dentry {int dummy; } ;


 int common_perm_dir_dentry (char const*,struct path const*,struct dentry*,int ,struct path_cond*) ;
 struct inode* d_backing_inode (struct dentry*) ;
 int path_mediated_fs (struct dentry*) ;

__attribute__((used)) static int common_perm_rm(const char *op, const struct path *dir,
     struct dentry *dentry, u32 mask)
{
 struct inode *inode = d_backing_inode(dentry);
 struct path_cond cond = { };

 if (!inode || !path_mediated_fs(dentry))
  return 0;

 cond.uid = inode->i_uid;
 cond.mode = inode->i_mode;

 return common_perm_dir_dentry(op, dir, dentry, mask, &cond);
}

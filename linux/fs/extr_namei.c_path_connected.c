
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {scalar_t__ mnt_root; struct super_block* mnt_sb; } ;
struct super_block {int s_iflags; scalar_t__ s_root; } ;
struct path {int dentry; struct vfsmount* mnt; } ;


 int SB_I_MULTIROOT ;
 int is_subdir (int ,scalar_t__) ;

__attribute__((used)) static bool path_connected(const struct path *path)
{
 struct vfsmount *mnt = path->mnt;
 struct super_block *sb = mnt->mnt_sb;


 if (!(sb->s_iflags & SB_I_MULTIROOT) && (mnt->mnt_root == sb->s_root))
  return 1;

 return is_subdir(path->dentry, mnt->mnt_root);
}

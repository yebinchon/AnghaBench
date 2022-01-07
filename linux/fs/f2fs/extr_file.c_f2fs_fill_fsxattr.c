
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct fsxattr {int fsx_projid; } ;
struct f2fs_inode_info {int i_projid; int i_flags; } ;


 struct f2fs_inode_info* F2FS_I (struct inode*) ;
 int F2FS_I_SB (struct inode*) ;
 int f2fs_iflags_to_xflags (int ) ;
 scalar_t__ f2fs_sb_has_project_quota (int ) ;
 int from_kprojid (int *,int ) ;
 int init_user_ns ;
 int simple_fill_fsxattr (struct fsxattr*,int ) ;

__attribute__((used)) static void f2fs_fill_fsxattr(struct inode *inode, struct fsxattr *fa)
{
 struct f2fs_inode_info *fi = F2FS_I(inode);

 simple_fill_fsxattr(fa, f2fs_iflags_to_xflags(fi->i_flags));

 if (f2fs_sb_has_project_quota(F2FS_I_SB(inode)))
  fa->fsx_projid = from_kprojid(&init_user_ns, fi->i_projid);
}

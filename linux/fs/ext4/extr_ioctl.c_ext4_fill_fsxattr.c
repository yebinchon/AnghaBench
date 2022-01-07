
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct fsxattr {int fsx_projid; } ;
struct ext4_inode_info {int i_flags; int i_projid; } ;


 int EXT4_FL_USER_VISIBLE ;
 struct ext4_inode_info* EXT4_I (struct inode*) ;
 scalar_t__ ext4_has_feature_project (int ) ;
 int ext4_iflags_to_xflags (int) ;
 int from_kprojid (int *,int ) ;
 int init_user_ns ;
 int simple_fill_fsxattr (struct fsxattr*,int ) ;

__attribute__((used)) static void ext4_fill_fsxattr(struct inode *inode, struct fsxattr *fa)
{
 struct ext4_inode_info *ei = EXT4_I(inode);

 simple_fill_fsxattr(fa, ext4_iflags_to_xflags(ei->i_flags &
            EXT4_FL_USER_VISIBLE));

 if (ext4_has_feature_project(inode->i_sb))
  fa->fsx_projid = from_kprojid(&init_user_ns, ei->i_projid);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct ext4_inode_info {unsigned int i_flags; int i_projid; } ;
typedef scalar_t__ __u32 ;


 int EPERM ;
 struct ext4_inode_info* EXT4_I (struct inode*) ;
 unsigned int EXT4_IMMUTABLE_FL ;
 scalar_t__ __kprojid_val (int ) ;
 scalar_t__ ext4_has_feature_project (int ) ;

__attribute__((used)) static int ext4_ioctl_check_immutable(struct inode *inode, __u32 new_projid,
          unsigned int flags)
{
 struct ext4_inode_info *ei = EXT4_I(inode);
 unsigned int oldflags = ei->i_flags;

 if (!(oldflags & EXT4_IMMUTABLE_FL) || !(flags & EXT4_IMMUTABLE_FL))
  return 0;

 if ((oldflags & ~EXT4_IMMUTABLE_FL) != (flags & ~EXT4_IMMUTABLE_FL))
  return -EPERM;
 if (ext4_has_feature_project(inode->i_sb) &&
     __kprojid_val(ei->i_projid) != new_projid)
  return -EPERM;

 return 0;
}

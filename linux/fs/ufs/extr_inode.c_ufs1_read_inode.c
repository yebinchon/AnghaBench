
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef int umode_t ;
struct TYPE_11__ {scalar_t__* i_symlink; scalar_t__* i_data; } ;
struct ufs_inode_info {TYPE_10__ i_u1; void* i_oeftflag; void* i_shadow; void* i_flags; } ;
struct TYPE_20__ {int * ui_symlink; int ui_addr; } ;
struct TYPE_18__ {int ui_oeftflag; int ui_shadow; } ;
struct TYPE_19__ {TYPE_7__ ui_sun; } ;
struct TYPE_14__ {int tv_sec; } ;
struct TYPE_13__ {int tv_sec; } ;
struct TYPE_12__ {int tv_sec; } ;
struct ufs_inode {TYPE_9__ ui_u2; TYPE_8__ ui_u3; int ui_flags; int ui_gen; int ui_blocks; TYPE_3__ ui_mtime; TYPE_2__ ui_ctime; TYPE_1__ ui_atime; int ui_size; int ui_nlink; int ui_mode; } ;
struct super_block {int dummy; } ;
struct TYPE_17__ {int tv_sec; scalar_t__ tv_nsec; } ;
struct TYPE_16__ {int tv_sec; scalar_t__ tv_nsec; } ;
struct TYPE_15__ {int tv_sec; scalar_t__ tv_nsec; } ;
struct inode {scalar_t__ i_nlink; void* i_blocks; void* i_generation; TYPE_6__ i_ctime; TYPE_5__ i_atime; TYPE_4__ i_mtime; int i_size; int i_mode; struct super_block* i_sb; } ;


 int ESTALE ;
 scalar_t__ S_ISBLK (int ) ;
 scalar_t__ S_ISCHR (int ) ;
 struct ufs_inode_info* UFS_I (struct inode*) ;
 int fs16_to_cpu (struct super_block*,int ) ;
 void* fs32_to_cpu (struct super_block*,int ) ;
 int fs64_to_cpu (struct super_block*,int ) ;
 int i_gid_write (struct inode*,int ) ;
 int i_uid_write (struct inode*,int ) ;
 int memcpy (scalar_t__*,int *,int) ;
 int set_nlink (struct inode*,int ) ;
 int ufs_get_inode_gid (struct super_block*,struct ufs_inode*) ;
 int ufs_get_inode_uid (struct super_block*,struct ufs_inode*) ;

__attribute__((used)) static int ufs1_read_inode(struct inode *inode, struct ufs_inode *ufs_inode)
{
 struct ufs_inode_info *ufsi = UFS_I(inode);
 struct super_block *sb = inode->i_sb;
 umode_t mode;




 inode->i_mode = mode = fs16_to_cpu(sb, ufs_inode->ui_mode);
 set_nlink(inode, fs16_to_cpu(sb, ufs_inode->ui_nlink));
 if (inode->i_nlink == 0)
  return -ESTALE;




 i_uid_write(inode, ufs_get_inode_uid(sb, ufs_inode));
 i_gid_write(inode, ufs_get_inode_gid(sb, ufs_inode));

 inode->i_size = fs64_to_cpu(sb, ufs_inode->ui_size);
 inode->i_atime.tv_sec = (signed)fs32_to_cpu(sb, ufs_inode->ui_atime.tv_sec);
 inode->i_ctime.tv_sec = (signed)fs32_to_cpu(sb, ufs_inode->ui_ctime.tv_sec);
 inode->i_mtime.tv_sec = (signed)fs32_to_cpu(sb, ufs_inode->ui_mtime.tv_sec);
 inode->i_mtime.tv_nsec = 0;
 inode->i_atime.tv_nsec = 0;
 inode->i_ctime.tv_nsec = 0;
 inode->i_blocks = fs32_to_cpu(sb, ufs_inode->ui_blocks);
 inode->i_generation = fs32_to_cpu(sb, ufs_inode->ui_gen);
 ufsi->i_flags = fs32_to_cpu(sb, ufs_inode->ui_flags);
 ufsi->i_shadow = fs32_to_cpu(sb, ufs_inode->ui_u3.ui_sun.ui_shadow);
 ufsi->i_oeftflag = fs32_to_cpu(sb, ufs_inode->ui_u3.ui_sun.ui_oeftflag);


 if (S_ISCHR(mode) || S_ISBLK(mode) || inode->i_blocks) {
  memcpy(ufsi->i_u1.i_data, &ufs_inode->ui_u2.ui_addr,
         sizeof(ufs_inode->ui_u2.ui_addr));
 } else {
  memcpy(ufsi->i_u1.i_symlink, ufs_inode->ui_u2.ui_symlink,
         sizeof(ufs_inode->ui_u2.ui_symlink) - 1);
  ufsi->i_u1.i_symlink[sizeof(ufs_inode->ui_u2.ui_symlink) - 1] = 0;
 }
 return 0;
}

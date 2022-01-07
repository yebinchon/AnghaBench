
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uid_t ;
struct super_block {int dummy; } ;
struct squashfs_base_inode {int mode; int mtime; int inode_number; int guid; int uid; } ;
struct TYPE_6__ {void* tv_sec; } ;
struct TYPE_5__ {void* tv_sec; } ;
struct TYPE_4__ {void* tv_sec; } ;
struct inode {scalar_t__ i_size; int i_mode; TYPE_3__ i_mtime; TYPE_2__ i_ctime; TYPE_1__ i_atime; void* i_ino; } ;
typedef int gid_t ;


 int i_gid_write (struct inode*,int ) ;
 int i_uid_write (struct inode*,int ) ;
 int le16_to_cpu (int ) ;
 void* le32_to_cpu (int ) ;
 int squashfs_get_id (struct super_block*,int ,int *) ;

__attribute__((used)) static int squashfs_new_inode(struct super_block *sb, struct inode *inode,
    struct squashfs_base_inode *sqsh_ino)
{
 uid_t i_uid;
 gid_t i_gid;
 int err;

 err = squashfs_get_id(sb, le16_to_cpu(sqsh_ino->uid), &i_uid);
 if (err)
  return err;

 err = squashfs_get_id(sb, le16_to_cpu(sqsh_ino->guid), &i_gid);
 if (err)
  return err;

 i_uid_write(inode, i_uid);
 i_gid_write(inode, i_gid);
 inode->i_ino = le32_to_cpu(sqsh_ino->inode_number);
 inode->i_mtime.tv_sec = le32_to_cpu(sqsh_ino->mtime);
 inode->i_atime.tv_sec = inode->i_mtime.tv_sec;
 inode->i_ctime.tv_sec = inode->i_mtime.tv_sec;
 inode->i_mode = le16_to_cpu(sqsh_ino->mode);
 inode->i_size = 0;

 return err;
}

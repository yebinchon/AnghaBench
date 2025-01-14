
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct TYPE_2__ {int mnt; } ;
struct file {int f_mode; TYPE_1__ f_path; } ;


 int EIO ;
 int EXT4_SB (int ) ;
 int FMODE_NOWAIT ;
 int FMODE_WRITE ;
 int dquot_file_open (struct inode*,struct file*) ;
 int ext4_forced_shutdown (int ) ;
 int ext4_inode_attach_jinode (struct inode*) ;
 int ext4_sample_last_mounted (int ,int ) ;
 int fscrypt_file_open (struct inode*,struct file*) ;
 int fsverity_file_open (struct inode*,struct file*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int ext4_file_open(struct inode * inode, struct file * filp)
{
 int ret;

 if (unlikely(ext4_forced_shutdown(EXT4_SB(inode->i_sb))))
  return -EIO;

 ret = ext4_sample_last_mounted(inode->i_sb, filp->f_path.mnt);
 if (ret)
  return ret;

 ret = fscrypt_file_open(inode, filp);
 if (ret)
  return ret;

 ret = fsverity_file_open(inode, filp);
 if (ret)
  return ret;





 if (filp->f_mode & FMODE_WRITE) {
  ret = ext4_inode_attach_jinode(inode);
  if (ret < 0)
   return ret;
 }

 filp->f_mode |= FMODE_NOWAIT;
 return dquot_file_open(inode, filp);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {TYPE_1__* i_sb; } ;
struct file {int f_pos; TYPE_2__* f_mapping; } ;
typedef int loff_t ;
struct TYPE_4__ {struct inode* host; } ;
struct TYPE_3__ {int s_maxbytes; } ;


 int EINVAL ;





 int i_size_read (struct inode*) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int mlog_errno (int) ;
 int ocfs2_inode_lock (struct inode*,int *,int ) ;
 int ocfs2_inode_unlock (struct inode*,int ) ;
 int ocfs2_seek_data_hole_offset (struct file*,int*,int) ;
 int vfs_setpos (struct file*,int,int ) ;

__attribute__((used)) static loff_t ocfs2_file_llseek(struct file *file, loff_t offset, int whence)
{
 struct inode *inode = file->f_mapping->host;
 int ret = 0;

 inode_lock(inode);

 switch (whence) {
 case 128:
  break;
 case 130:



  ret = ocfs2_inode_lock(inode, ((void*)0), 0);
  if (ret < 0) {
   mlog_errno(ret);
   goto out;
  }
  offset += i_size_read(inode);
  ocfs2_inode_unlock(inode, 0);
  break;
 case 132:
  if (offset == 0) {
   offset = file->f_pos;
   goto out;
  }
  offset += file->f_pos;
  break;
 case 131:
 case 129:
  ret = ocfs2_seek_data_hole_offset(file, &offset, whence);
  if (ret)
   goto out;
  break;
 default:
  ret = -EINVAL;
  goto out;
 }

 offset = vfs_setpos(file, offset, inode->i_sb->s_maxbytes);

out:
 inode_unlock(inode);
 if (ret)
  return ret;
 return offset;
}

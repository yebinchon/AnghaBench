
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_inode_info {int ip_dyn_features; int ip_xattr_sem; } ;
struct ocfs2_dinode {int dummy; } ;
struct dentry {int d_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int ssize_t ;


 int EOPNOTSUPP ;
 int OCFS2_HAS_XATTR_FL ;
 struct ocfs2_inode_info* OCFS2_I (int ) ;
 int OCFS2_SB (int ) ;
 int brelse (struct buffer_head*) ;
 int d_inode (struct dentry*) ;
 int down_read (int *) ;
 int mlog_errno (int) ;
 int ocfs2_inode_lock (int ,struct buffer_head**,int ) ;
 int ocfs2_inode_unlock (int ,int ) ;
 int ocfs2_supports_xattr (int ) ;
 int ocfs2_xattr_block_list (int ,struct ocfs2_dinode*,char*,size_t) ;
 int ocfs2_xattr_ibody_list (int ,struct ocfs2_dinode*,char*,size_t) ;
 int up_read (int *) ;

ssize_t ocfs2_listxattr(struct dentry *dentry,
   char *buffer,
   size_t size)
{
 int ret = 0, i_ret = 0, b_ret = 0;
 struct buffer_head *di_bh = ((void*)0);
 struct ocfs2_dinode *di = ((void*)0);
 struct ocfs2_inode_info *oi = OCFS2_I(d_inode(dentry));

 if (!ocfs2_supports_xattr(OCFS2_SB(dentry->d_sb)))
  return -EOPNOTSUPP;

 if (!(oi->ip_dyn_features & OCFS2_HAS_XATTR_FL))
  return ret;

 ret = ocfs2_inode_lock(d_inode(dentry), &di_bh, 0);
 if (ret < 0) {
  mlog_errno(ret);
  return ret;
 }

 di = (struct ocfs2_dinode *)di_bh->b_data;

 down_read(&oi->ip_xattr_sem);
 i_ret = ocfs2_xattr_ibody_list(d_inode(dentry), di, buffer, size);
 if (i_ret < 0)
  b_ret = 0;
 else {
  if (buffer) {
   buffer += i_ret;
   size -= i_ret;
  }
  b_ret = ocfs2_xattr_block_list(d_inode(dentry), di,
            buffer, size);
  if (b_ret < 0)
   i_ret = 0;
 }
 up_read(&oi->ip_xattr_sem);
 ocfs2_inode_unlock(d_inode(dentry), 0);

 brelse(di_bh);

 return i_ret + b_ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_super {int dummy; } ;
struct inode {int i_data; int i_sb; } ;
struct file {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int ssize_t ;
typedef int loff_t ;
struct TYPE_2__ {int ip_flags; int ip_alloc_sem; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int EROFS ;
 TYPE_1__* OCFS2_I (struct inode*) ;
 int OCFS2_INODE_SYSTEM_FILE ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int PAGE_SIZE ;
 unsigned int REMAP_FILE_ADVISORY ;
 unsigned int REMAP_FILE_DEDUP ;
 int SINGLE_DEPTH_NESTING ;
 int down_write (int *) ;
 int down_write_nested (int *,int ) ;
 struct inode* file_inode (struct file*) ;
 int generic_remap_file_range_prep (struct file*,int,struct file*,int,int*,unsigned int) ;
 int mlog_errno (int) ;
 int ocfs2_extent_map_trunc (struct inode*,int ) ;
 scalar_t__ ocfs2_is_hard_readonly (struct ocfs2_super*) ;
 scalar_t__ ocfs2_is_soft_readonly (struct ocfs2_super*) ;
 int ocfs2_refcount_tree (struct ocfs2_super*) ;
 int ocfs2_reflink_inodes_lock (struct inode*,struct buffer_head**,struct inode*,struct buffer_head**) ;
 int ocfs2_reflink_inodes_unlock (struct inode*,struct buffer_head*,struct inode*,struct buffer_head*) ;
 int ocfs2_reflink_remap_blocks (struct inode*,struct buffer_head*,int,struct inode*,struct buffer_head*,int,int) ;
 int ocfs2_reflink_update_dest (struct inode*,struct buffer_head*,int) ;
 int round_down (int,int ) ;
 scalar_t__ round_up (int,int ) ;
 int truncate_inode_pages_range (int *,int ,scalar_t__) ;
 int up_write (int *) ;

__attribute__((used)) static loff_t ocfs2_remap_file_range(struct file *file_in, loff_t pos_in,
         struct file *file_out, loff_t pos_out,
         loff_t len, unsigned int remap_flags)
{
 struct inode *inode_in = file_inode(file_in);
 struct inode *inode_out = file_inode(file_out);
 struct ocfs2_super *osb = OCFS2_SB(inode_in->i_sb);
 struct buffer_head *in_bh = ((void*)0), *out_bh = ((void*)0);
 bool same_inode = (inode_in == inode_out);
 loff_t remapped = 0;
 ssize_t ret;

 if (remap_flags & ~(REMAP_FILE_DEDUP | REMAP_FILE_ADVISORY))
  return -EINVAL;
 if (!ocfs2_refcount_tree(osb))
  return -EOPNOTSUPP;
 if (ocfs2_is_hard_readonly(osb) || ocfs2_is_soft_readonly(osb))
  return -EROFS;


 ret = ocfs2_reflink_inodes_lock(inode_in, &in_bh, inode_out, &out_bh);
 if (ret)
  return ret;


 ret = -EINVAL;
 if ((OCFS2_I(inode_in)->ip_flags & OCFS2_INODE_SYSTEM_FILE) ||
     (OCFS2_I(inode_out)->ip_flags & OCFS2_INODE_SYSTEM_FILE))
  goto out_unlock;

 ret = generic_remap_file_range_prep(file_in, pos_in, file_out, pos_out,
   &len, remap_flags);
 if (ret < 0 || len == 0)
  goto out_unlock;


 down_write(&OCFS2_I(inode_in)->ip_alloc_sem);
 if (!same_inode)
  down_write_nested(&OCFS2_I(inode_out)->ip_alloc_sem,
      SINGLE_DEPTH_NESTING);


 truncate_inode_pages_range(&inode_out->i_data,
       round_down(pos_out, PAGE_SIZE),
       round_up(pos_out + len, PAGE_SIZE) - 1);

 remapped = ocfs2_reflink_remap_blocks(inode_in, in_bh, pos_in,
   inode_out, out_bh, pos_out, len);
 up_write(&OCFS2_I(inode_in)->ip_alloc_sem);
 if (!same_inode)
  up_write(&OCFS2_I(inode_out)->ip_alloc_sem);
 if (remapped < 0) {
  ret = remapped;
  mlog_errno(ret);
  goto out_unlock;
 }





 ocfs2_extent_map_trunc(inode_in, 0);
 ocfs2_extent_map_trunc(inode_out, 0);

 ret = ocfs2_reflink_update_dest(inode_out, out_bh, pos_out + len);
 if (ret) {
  mlog_errno(ret);
  goto out_unlock;
 }

out_unlock:
 ocfs2_reflink_inodes_unlock(inode_in, in_bh, inode_out, out_bh);
 return remapped > 0 ? remapped : ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_sb; int i_mtime; int i_ctime; int i_blocks; } ;
struct buffer_head {int dummy; } ;
typedef scalar_t__ loff_t ;
typedef int handle_t ;
struct TYPE_2__ {int ip_lock; } ;


 scalar_t__ IS_ERR (int *) ;
 TYPE_1__* OCFS2_I (struct inode*) ;
 int OCFS2_INODE_UPDATE_CREDITS ;
 int OCFS2_SB (int ) ;
 int PTR_ERR (int *) ;
 int current_time (struct inode*) ;
 scalar_t__ i_size_read (struct inode*) ;
 int i_size_write (struct inode*,scalar_t__) ;
 int mlog_errno (int) ;
 int ocfs2_commit_trans (int ,int *) ;
 int ocfs2_inode_sector_count (struct inode*) ;
 int ocfs2_mark_inode_dirty (int *,struct inode*,struct buffer_head*) ;
 int * ocfs2_start_trans (int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int ocfs2_reflink_update_dest(struct inode *dest,
         struct buffer_head *d_bh,
         loff_t newlen)
{
 handle_t *handle;
 int ret;

 dest->i_blocks = ocfs2_inode_sector_count(dest);

 if (newlen <= i_size_read(dest))
  return 0;

 handle = ocfs2_start_trans(OCFS2_SB(dest->i_sb),
       OCFS2_INODE_UPDATE_CREDITS);
 if (IS_ERR(handle)) {
  ret = PTR_ERR(handle);
  mlog_errno(ret);
  return ret;
 }


 spin_lock(&OCFS2_I(dest)->ip_lock);
 if (newlen > i_size_read(dest))
  i_size_write(dest, newlen);
 spin_unlock(&OCFS2_I(dest)->ip_lock);
 dest->i_ctime = dest->i_mtime = current_time(dest);

 ret = ocfs2_mark_inode_dirty(handle, dest, d_bh);
 if (ret) {
  mlog_errno(ret);
  goto out_commit;
 }

out_commit:
 ocfs2_commit_trans(OCFS2_SB(dest->i_sb), handle);
 return ret;
}

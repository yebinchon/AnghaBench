
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int sb; } ;
struct ocfs2_dinode {int i_check; } ;
struct buffer_head {scalar_t__ b_data; int b_end_io; int b_blocknr; } ;


 int BUG_ON (int ) ;
 int EIO ;
 int EROFS ;
 int REQ_OP_WRITE ;
 int buffer_jbd (struct buffer_head*) ;
 int buffer_uptodate (struct buffer_head*) ;
 int clear_buffer_dirty (struct buffer_head*) ;
 int end_buffer_write_sync ;
 int get_bh (struct buffer_head*) ;
 int lock_buffer (struct buffer_head*) ;
 int mlog_errno (int) ;
 int ocfs2_check_super_or_backup (int ,int ) ;
 int ocfs2_compute_meta_ecc (int ,scalar_t__,int *) ;
 scalar_t__ ocfs2_is_hard_readonly (struct ocfs2_super*) ;
 scalar_t__ ocfs2_is_soft_readonly (struct ocfs2_super*) ;
 int set_buffer_uptodate (struct buffer_head*) ;
 int submit_bh (int ,int ,struct buffer_head*) ;
 int wait_on_buffer (struct buffer_head*) ;

int ocfs2_write_super_or_backup(struct ocfs2_super *osb,
    struct buffer_head *bh)
{
 int ret = 0;
 struct ocfs2_dinode *di = (struct ocfs2_dinode *)bh->b_data;

 BUG_ON(buffer_jbd(bh));
 ocfs2_check_super_or_backup(osb->sb, bh->b_blocknr);

 if (ocfs2_is_hard_readonly(osb) || ocfs2_is_soft_readonly(osb)) {
  ret = -EROFS;
  mlog_errno(ret);
  goto out;
 }

 lock_buffer(bh);
 set_buffer_uptodate(bh);


 clear_buffer_dirty(bh);

 get_bh(bh);
 bh->b_end_io = end_buffer_write_sync;
 ocfs2_compute_meta_ecc(osb->sb, bh->b_data, &di->i_check);
 submit_bh(REQ_OP_WRITE, 0, bh);

 wait_on_buffer(bh);

 if (!buffer_uptodate(bh)) {
  ret = -EIO;
  mlog_errno(ret);
 }

out:
 return ret;
}

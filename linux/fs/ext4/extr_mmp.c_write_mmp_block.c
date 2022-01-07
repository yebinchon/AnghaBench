
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct mmp_struct {int dummy; } ;
struct buffer_head {int b_end_io; scalar_t__ b_data; } ;


 int REQ_META ;
 int REQ_OP_WRITE ;
 int REQ_PRIO ;
 int REQ_SYNC ;
 int buffer_uptodate (struct buffer_head*) ;
 int end_buffer_write_sync ;
 int ext4_mmp_csum_set (struct super_block*,struct mmp_struct*) ;
 int get_bh (struct buffer_head*) ;
 int lock_buffer (struct buffer_head*) ;
 int sb_end_write (struct super_block*) ;
 int sb_start_write (struct super_block*) ;
 int submit_bh (int ,int,struct buffer_head*) ;
 scalar_t__ unlikely (int) ;
 int wait_on_buffer (struct buffer_head*) ;

__attribute__((used)) static int write_mmp_block(struct super_block *sb, struct buffer_head *bh)
{
 struct mmp_struct *mmp = (struct mmp_struct *)(bh->b_data);





 sb_start_write(sb);
 ext4_mmp_csum_set(sb, mmp);
 lock_buffer(bh);
 bh->b_end_io = end_buffer_write_sync;
 get_bh(bh);
 submit_bh(REQ_OP_WRITE, REQ_SYNC | REQ_META | REQ_PRIO, bh);
 wait_on_buffer(bh);
 sb_end_write(sb);
 if (unlikely(!buffer_uptodate(bh)))
  return 1;

 return 0;
}

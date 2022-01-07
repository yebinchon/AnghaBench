
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct mmp_struct {int mmp_magic; } ;
struct buffer_head {scalar_t__ b_data; int b_end_io; } ;
typedef int ext4_fsblk_t ;


 int EFSBADCRC ;
 int EFSCORRUPTED ;
 int EIO ;
 int ENOMEM ;
 scalar_t__ EXT4_MMP_MAGIC ;
 int REQ_META ;
 int REQ_OP_READ ;
 int REQ_PRIO ;
 int brelse (struct buffer_head*) ;
 int buffer_uptodate (struct buffer_head*) ;
 int clear_buffer_uptodate (struct buffer_head*) ;
 int end_buffer_read_sync ;
 int ext4_mmp_csum_verify (struct super_block*,struct mmp_struct*) ;
 int ext4_warning (struct super_block*,char*,int,int ) ;
 int get_bh (struct buffer_head*) ;
 scalar_t__ le32_to_cpu (int ) ;
 int lock_buffer (struct buffer_head*) ;
 struct buffer_head* sb_getblk (struct super_block*,int ) ;
 int submit_bh (int ,int,struct buffer_head*) ;
 int wait_on_buffer (struct buffer_head*) ;

__attribute__((used)) static int read_mmp_block(struct super_block *sb, struct buffer_head **bh,
     ext4_fsblk_t mmp_block)
{
 struct mmp_struct *mmp;
 int ret;

 if (*bh)
  clear_buffer_uptodate(*bh);




 if (!*bh) {
  *bh = sb_getblk(sb, mmp_block);
  if (!*bh) {
   ret = -ENOMEM;
   goto warn_exit;
  }
 }

 get_bh(*bh);
 lock_buffer(*bh);
 (*bh)->b_end_io = end_buffer_read_sync;
 submit_bh(REQ_OP_READ, REQ_META | REQ_PRIO, *bh);
 wait_on_buffer(*bh);
 if (!buffer_uptodate(*bh)) {
  ret = -EIO;
  goto warn_exit;
 }
 mmp = (struct mmp_struct *)((*bh)->b_data);
 if (le32_to_cpu(mmp->mmp_magic) != EXT4_MMP_MAGIC) {
  ret = -EFSCORRUPTED;
  goto warn_exit;
 }
 if (!ext4_mmp_csum_verify(sb, mmp)) {
  ret = -EFSBADCRC;
  goto warn_exit;
 }
 return 0;
warn_exit:
 brelse(*bh);
 *bh = ((void*)0);
 ext4_warning(sb, "Error %d while reading MMP block %llu",
       ret, mmp_block);
 return ret;
}

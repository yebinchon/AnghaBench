
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct super_block {unsigned int s_id; } ;
struct mmpd_data {struct buffer_head* bh; struct super_block* sb; } ;
struct mmp_struct {int mmp_bdevname; int mmp_seq; int mmp_check_interval; } ;
struct ext4_super_block {int s_first_data_block; int s_mmp_update_interval; } ;
struct buffer_head {int b_bdev; scalar_t__ b_data; } ;
typedef scalar_t__ ext4_fsblk_t ;
struct TYPE_2__ {int * s_mmp_tsk; struct ext4_super_block* s_es; } ;


 unsigned int EXT4_MMP_MIN_CHECK_INTERVAL ;
 scalar_t__ EXT4_MMP_SEQ_CLEAN ;
 scalar_t__ EXT4_MMP_SEQ_FSCK ;
 TYPE_1__* EXT4_SB (struct super_block*) ;
 int GFP_KERNEL ;
 unsigned int HZ ;
 scalar_t__ IS_ERR (int *) ;
 int bdevname (int ,int ) ;
 int brelse (struct buffer_head*) ;
 int cpu_to_le32 (scalar_t__) ;
 int dump_mmp_msg (struct super_block*,struct mmp_struct*,char*) ;
 scalar_t__ ext4_blocks_count (struct ext4_super_block*) ;
 int ext4_warning (struct super_block*,char*,...) ;
 int kfree (struct mmpd_data*) ;
 struct mmpd_data* kmalloc (int,int ) ;
 int kmmpd ;
 int * kthread_run (int ,struct mmpd_data*,char*,int ) ;
 unsigned int le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 unsigned int min (unsigned int,unsigned int) ;
 scalar_t__ mmp_new_seq () ;
 int read_mmp_block (struct super_block*,struct buffer_head**,scalar_t__) ;
 scalar_t__ schedule_timeout_interruptible (unsigned int) ;
 int write_mmp_block (struct super_block*,struct buffer_head*) ;

int ext4_multi_mount_protect(struct super_block *sb,
        ext4_fsblk_t mmp_block)
{
 struct ext4_super_block *es = EXT4_SB(sb)->s_es;
 struct buffer_head *bh = ((void*)0);
 struct mmp_struct *mmp = ((void*)0);
 struct mmpd_data *mmpd_data;
 u32 seq;
 unsigned int mmp_check_interval = le16_to_cpu(es->s_mmp_update_interval);
 unsigned int wait_time = 0;
 int retval;

 if (mmp_block < le32_to_cpu(es->s_first_data_block) ||
     mmp_block >= ext4_blocks_count(es)) {
  ext4_warning(sb, "Invalid MMP block in superblock");
  goto failed;
 }

 retval = read_mmp_block(sb, &bh, mmp_block);
 if (retval)
  goto failed;

 mmp = (struct mmp_struct *)(bh->b_data);

 if (mmp_check_interval < EXT4_MMP_MIN_CHECK_INTERVAL)
  mmp_check_interval = EXT4_MMP_MIN_CHECK_INTERVAL;





 if (le16_to_cpu(mmp->mmp_check_interval) > mmp_check_interval)
  mmp_check_interval = le16_to_cpu(mmp->mmp_check_interval);

 seq = le32_to_cpu(mmp->mmp_seq);
 if (seq == EXT4_MMP_SEQ_CLEAN)
  goto skip;

 if (seq == EXT4_MMP_SEQ_FSCK) {
  dump_mmp_msg(sb, mmp, "fsck is running on the filesystem");
  goto failed;
 }

 wait_time = min(mmp_check_interval * 2 + 1,
   mmp_check_interval + 60);


 if (wait_time > EXT4_MMP_MIN_CHECK_INTERVAL * 4)
  ext4_warning(sb, "MMP interval %u higher than expected, please"
        " wait.\n", wait_time * 2);

 if (schedule_timeout_interruptible(HZ * wait_time) != 0) {
  ext4_warning(sb, "MMP startup interrupted, failing mount\n");
  goto failed;
 }

 retval = read_mmp_block(sb, &bh, mmp_block);
 if (retval)
  goto failed;
 mmp = (struct mmp_struct *)(bh->b_data);
 if (seq != le32_to_cpu(mmp->mmp_seq)) {
  dump_mmp_msg(sb, mmp,
        "Device is already active on another node.");
  goto failed;
 }

skip:



 seq = mmp_new_seq();
 mmp->mmp_seq = cpu_to_le32(seq);

 retval = write_mmp_block(sb, bh);
 if (retval)
  goto failed;




 if (schedule_timeout_interruptible(HZ * wait_time) != 0) {
  ext4_warning(sb, "MMP startup interrupted, failing mount");
  goto failed;
 }

 retval = read_mmp_block(sb, &bh, mmp_block);
 if (retval)
  goto failed;
 mmp = (struct mmp_struct *)(bh->b_data);
 if (seq != le32_to_cpu(mmp->mmp_seq)) {
  dump_mmp_msg(sb, mmp,
        "Device is already active on another node.");
  goto failed;
 }

 mmpd_data = kmalloc(sizeof(*mmpd_data), GFP_KERNEL);
 if (!mmpd_data) {
  ext4_warning(sb, "not enough memory for mmpd_data");
  goto failed;
 }
 mmpd_data->sb = sb;
 mmpd_data->bh = bh;




 EXT4_SB(sb)->s_mmp_tsk = kthread_run(kmmpd, mmpd_data, "kmmpd-%s",
          bdevname(bh->b_bdev,
            mmp->mmp_bdevname));
 if (IS_ERR(EXT4_SB(sb)->s_mmp_tsk)) {
  EXT4_SB(sb)->s_mmp_tsk = ((void*)0);
  kfree(mmpd_data);
  ext4_warning(sb, "Unable to create kmmpd thread for %s.",
        sb->s_id);
  goto failed;
 }

 return 0;

failed:
 brelse(bh);
 return 1;
}

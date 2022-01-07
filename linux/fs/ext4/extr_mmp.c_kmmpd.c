
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct super_block {int dummy; } ;
struct mmpd_data {struct buffer_head* bh; struct super_block* sb; } ;
struct mmp_struct {scalar_t__ mmp_seq; void* mmp_time; void* mmp_check_interval; int mmp_nodename; int mmp_bdevname; } ;
struct ext4_super_block {int s_feature_incompat; int s_mmp_block; int s_mmp_update_interval; } ;
struct buffer_head {scalar_t__ b_data; int b_bdev; } ;
typedef int ext4_fsblk_t ;
struct TYPE_4__ {int * s_mmp_tsk; struct ext4_super_block* s_es; } ;
struct TYPE_3__ {int nodename; } ;


 int EBUSY ;
 int EXT4_FEATURE_INCOMPAT_MMP ;
 int EXT4_MMP_CHECK_MULT ;
 int EXT4_MMP_MAX_CHECK_INTERVAL ;
 int EXT4_MMP_MIN_CHECK_INTERVAL ;
 scalar_t__ EXT4_MMP_SEQ_CLEAN ;
 scalar_t__ EXT4_MMP_SEQ_MAX ;
 TYPE_2__* EXT4_SB (struct super_block*) ;
 int HZ ;
 int bdevname (int ,int ) ;
 int brelse (struct buffer_head*) ;
 void* cpu_to_le16 (unsigned int) ;
 void* cpu_to_le32 (scalar_t__) ;
 void* cpu_to_le64 (int ) ;
 int dump_mmp_msg (struct super_block*,struct mmp_struct*,char*) ;
 int ext4_error (struct super_block*,char*,...) ;
 int ext4_warning (struct super_block*,char*) ;
 TYPE_1__* init_utsname () ;
 unsigned long jiffies ;
 int kfree (void*) ;
 int kthread_should_stop () ;
 int ktime_get_real_seconds () ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 unsigned int max (int,int ) ;
 scalar_t__ memcmp (int ,int ,int) ;
 int memcpy (int ,int ,int) ;
 int min (int,int ) ;
 int put_bh (struct buffer_head*) ;
 int read_mmp_block (struct super_block*,struct buffer_head**,int ) ;
 scalar_t__ sb_rdonly (struct super_block*) ;
 int schedule_timeout_interruptible (int) ;
 int write_mmp_block (struct super_block*,struct buffer_head*) ;

__attribute__((used)) static int kmmpd(void *data)
{
 struct super_block *sb = ((struct mmpd_data *) data)->sb;
 struct buffer_head *bh = ((struct mmpd_data *) data)->bh;
 struct ext4_super_block *es = EXT4_SB(sb)->s_es;
 struct mmp_struct *mmp;
 ext4_fsblk_t mmp_block;
 u32 seq = 0;
 unsigned long failed_writes = 0;
 int mmp_update_interval = le16_to_cpu(es->s_mmp_update_interval);
 unsigned mmp_check_interval;
 unsigned long last_update_time;
 unsigned long diff;
 int retval;

 mmp_block = le64_to_cpu(es->s_mmp_block);
 mmp = (struct mmp_struct *)(bh->b_data);
 mmp->mmp_time = cpu_to_le64(ktime_get_real_seconds());




 mmp_check_interval = max(EXT4_MMP_CHECK_MULT * mmp_update_interval,
     EXT4_MMP_MIN_CHECK_INTERVAL);
 mmp->mmp_check_interval = cpu_to_le16(mmp_check_interval);
 bdevname(bh->b_bdev, mmp->mmp_bdevname);

 memcpy(mmp->mmp_nodename, init_utsname()->nodename,
        sizeof(mmp->mmp_nodename));

 while (!kthread_should_stop()) {
  if (++seq > EXT4_MMP_SEQ_MAX)
   seq = 1;

  mmp->mmp_seq = cpu_to_le32(seq);
  mmp->mmp_time = cpu_to_le64(ktime_get_real_seconds());
  last_update_time = jiffies;

  retval = write_mmp_block(sb, bh);




  if (retval) {
   if ((failed_writes % 60) == 0)
    ext4_error(sb, "Error writing to MMP block");
   failed_writes++;
  }

  if (!(le32_to_cpu(es->s_feature_incompat) &
      EXT4_FEATURE_INCOMPAT_MMP)) {
   ext4_warning(sb, "kmmpd being stopped since MMP feature"
         " has been disabled.");
   goto exit_thread;
  }

  if (sb_rdonly(sb))
   break;

  diff = jiffies - last_update_time;
  if (diff < mmp_update_interval * HZ)
   schedule_timeout_interruptible(mmp_update_interval *
             HZ - diff);






  diff = jiffies - last_update_time;
  if (diff > mmp_check_interval * HZ) {
   struct buffer_head *bh_check = ((void*)0);
   struct mmp_struct *mmp_check;

   retval = read_mmp_block(sb, &bh_check, mmp_block);
   if (retval) {
    ext4_error(sb, "error reading MMP data: %d",
        retval);
    goto exit_thread;
   }

   mmp_check = (struct mmp_struct *)(bh_check->b_data);
   if (mmp->mmp_seq != mmp_check->mmp_seq ||
       memcmp(mmp->mmp_nodename, mmp_check->mmp_nodename,
       sizeof(mmp->mmp_nodename))) {
    dump_mmp_msg(sb, mmp_check,
          "Error while updating MMP info. "
          "The filesystem seems to have been"
          " multiply mounted.");
    ext4_error(sb, "abort");
    put_bh(bh_check);
    retval = -EBUSY;
    goto exit_thread;
   }
   put_bh(bh_check);
  }





  mmp_check_interval = max(min(EXT4_MMP_CHECK_MULT * diff / HZ,
          EXT4_MMP_MAX_CHECK_INTERVAL),
      EXT4_MMP_MIN_CHECK_INTERVAL);
  mmp->mmp_check_interval = cpu_to_le16(mmp_check_interval);
 }




 mmp->mmp_seq = cpu_to_le32(EXT4_MMP_SEQ_CLEAN);
 mmp->mmp_time = cpu_to_le64(ktime_get_real_seconds());

 retval = write_mmp_block(sb, bh);

exit_thread:
 EXT4_SB(sb)->s_mmp_tsk = ((void*)0);
 kfree(data);
 brelse(bh);
 return retval;
}

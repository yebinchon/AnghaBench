
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint ;
struct super_block {int dummy; } ;
struct jfs_superblock {int s_state; int s_logdev; int s_logserial; int s_flag; } ;
struct jfs_sb_info {int flag; scalar_t__ p_state; scalar_t__ state; TYPE_2__* log; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_4__ {scalar_t__ serial; TYPE_1__* bdev; } ;
struct TYPE_3__ {int bd_dev; } ;


 scalar_t__ FM_CLEAN ;
 scalar_t__ FM_DIRTY ;
 scalar_t__ FM_MOUNT ;
 scalar_t__ JFS_DASD_ENABLED ;
 scalar_t__ JFS_DASD_PRIME ;
 int JFS_NOINTEGRITY ;
 struct jfs_sb_info* JFS_SBI (struct super_block*) ;
 int brelse (struct buffer_head*) ;
 int cpu_to_le32 (scalar_t__) ;
 int jfs_err (char*) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 scalar_t__ new_encode_dev (int ) ;
 int readSuper (struct super_block*,struct buffer_head**) ;
 int sync_dirty_buffer (struct buffer_head*) ;

int updateSuper(struct super_block *sb, uint state)
{
 struct jfs_superblock *j_sb;
 struct jfs_sb_info *sbi = JFS_SBI(sb);
 struct buffer_head *bh;
 int rc;

 if (sbi->flag & JFS_NOINTEGRITY) {
  if (state == FM_DIRTY) {
   sbi->p_state = state;
   return 0;
  } else if (state == FM_MOUNT) {
   sbi->p_state = sbi->state;
   state = FM_DIRTY;
  } else if (state == FM_CLEAN) {
   state = sbi->p_state;
  } else
   jfs_err("updateSuper: bad state");
 } else if (sbi->state == FM_DIRTY)
  return 0;

 if ((rc = readSuper(sb, &bh)))
  return rc;

 j_sb = (struct jfs_superblock *)bh->b_data;

 j_sb->s_state = cpu_to_le32(state);
 sbi->state = state;

 if (state == FM_MOUNT) {

  j_sb->s_logdev = cpu_to_le32(new_encode_dev(sbi->log->bdev->bd_dev));
  j_sb->s_logserial = cpu_to_le32(sbi->log->serial);
 } else if (state == FM_CLEAN) {




  if (j_sb->s_flag & cpu_to_le32(JFS_DASD_ENABLED))
   j_sb->s_flag |= cpu_to_le32(JFS_DASD_PRIME);
 }

 mark_buffer_dirty(bh);
 sync_dirty_buffer(bh);
 brelse(bh);

 return 0;
}

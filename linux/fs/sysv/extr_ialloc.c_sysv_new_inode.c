
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
typedef scalar_t__ sysv_ino_t ;
struct writeback_control {int sync_mode; } ;
struct sysv_sb_info {int s_lock; int s_sb_total_free_inodes; scalar_t__* s_sb_fic_count; } ;
struct super_block {int dummy; } ;
struct inode {scalar_t__ i_blocks; int i_ctime; int i_atime; int i_mtime; void* i_ino; struct super_block* i_sb; } ;
struct TYPE_2__ {scalar_t__ i_dir_start_lookup; int i_data; } ;


 int ENOMEM ;
 int ENOSPC ;
 struct inode* ERR_PTR (int ) ;
 TYPE_1__* SYSV_I (struct inode*) ;
 struct sysv_sb_info* SYSV_SB (struct super_block*) ;
 int WB_SYNC_NONE ;
 scalar_t__ cpu_to_fs16 (struct sysv_sb_info*,unsigned int) ;
 int current_time (struct inode*) ;
 int dirty_sb (struct super_block*) ;
 int fs16_add (struct sysv_sb_info*,int ,int) ;
 void* fs16_to_cpu (struct sysv_sb_info*,scalar_t__) ;
 int inode_init_owner (struct inode*,struct inode const*,int ) ;
 int insert_inode_hash (struct inode*) ;
 int iput (struct inode*) ;
 int mark_inode_dirty (struct inode*) ;
 int memset (int ,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct inode* new_inode (struct super_block*) ;
 unsigned int refill_free_cache (struct super_block*) ;
 scalar_t__* sv_sb_fic_inode (struct super_block*,unsigned int) ;
 int sysv_write_inode (struct inode*,struct writeback_control*) ;

struct inode * sysv_new_inode(const struct inode * dir, umode_t mode)
{
 struct super_block *sb = dir->i_sb;
 struct sysv_sb_info *sbi = SYSV_SB(sb);
 struct inode *inode;
 sysv_ino_t ino;
 unsigned count;
 struct writeback_control wbc = {
  .sync_mode = WB_SYNC_NONE
 };

 inode = new_inode(sb);
 if (!inode)
  return ERR_PTR(-ENOMEM);

 mutex_lock(&sbi->s_lock);
 count = fs16_to_cpu(sbi, *sbi->s_sb_fic_count);
 if (count == 0 || (*sv_sb_fic_inode(sb,count-1) == 0)) {
  count = refill_free_cache(sb);
  if (count == 0) {
   iput(inode);
   mutex_unlock(&sbi->s_lock);
   return ERR_PTR(-ENOSPC);
  }
 }

 ino = *sv_sb_fic_inode(sb,--count);
 *sbi->s_sb_fic_count = cpu_to_fs16(sbi, count);
 fs16_add(sbi, sbi->s_sb_total_free_inodes, -1);
 dirty_sb(sb);
 inode_init_owner(inode, dir, mode);
 inode->i_ino = fs16_to_cpu(sbi, ino);
 inode->i_mtime = inode->i_atime = inode->i_ctime = current_time(inode);
 inode->i_blocks = 0;
 memset(SYSV_I(inode)->i_data, 0, sizeof(SYSV_I(inode)->i_data));
 SYSV_I(inode)->i_dir_start_lookup = 0;
 insert_inode_hash(inode);
 mark_inode_dirty(inode);

 sysv_write_inode(inode, &wbc);
 mark_inode_dirty(inode);

 mutex_unlock(&sbi->s_lock);
 return inode;
}

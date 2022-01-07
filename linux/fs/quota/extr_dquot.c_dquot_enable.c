
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_umount; } ;
struct inode {struct super_block* i_sb; } ;
struct TYPE_2__ {int flags; } ;


 int BUG_ON (unsigned int) ;
 unsigned int DQUOT_LIMITS_ENABLED ;
 unsigned int DQUOT_SUSPENDED ;
 unsigned int DQUOT_USAGE_ENABLED ;
 int EBUSY ;
 scalar_t__ WARN_ON_ONCE (int ) ;
 int down_read_trylock (int *) ;
 int dq_state_lock ;
 int dquot_state_flag (unsigned int,int) ;
 TYPE_1__* sb_dqopt (struct super_block*) ;
 scalar_t__ sb_has_quota_limits_enabled (struct super_block*,int) ;
 scalar_t__ sb_has_quota_loaded (struct super_block*,int) ;
 scalar_t__ sb_has_quota_usage_enabled (struct super_block*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int up_read (int *) ;
 int vfs_load_quota_inode (struct inode*,int,int,unsigned int) ;

int dquot_enable(struct inode *inode, int type, int format_id,
   unsigned int flags)
{
 struct super_block *sb = inode->i_sb;


 BUG_ON(flags & DQUOT_SUSPENDED);

 if (WARN_ON_ONCE(down_read_trylock(&sb->s_umount)))
  up_read(&sb->s_umount);

 if (!flags)
  return 0;

 if (sb_has_quota_loaded(sb, type)) {
  if (flags & DQUOT_USAGE_ENABLED &&
      sb_has_quota_usage_enabled(sb, type))
   return -EBUSY;
  if (flags & DQUOT_LIMITS_ENABLED &&
      sb_has_quota_limits_enabled(sb, type))
   return -EBUSY;
  spin_lock(&dq_state_lock);
  sb_dqopt(sb)->flags |= dquot_state_flag(flags, type);
  spin_unlock(&dq_state_lock);
  return 0;
 }

 return vfs_load_quota_inode(inode, type, format_id, flags);
}

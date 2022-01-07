
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct super_block {int s_bdev; int * s_user_ns; TYPE_2__* dq_op; TYPE_1__* s_op; } ;
struct quota_info {int flags; int ** files; TYPE_4__* info; TYPE_3__** ops; } ;
struct quota_format_type {TYPE_3__* qf_ops; } ;
struct inode {int i_flags; int i_mode; struct super_block* i_sb; } ;
struct TYPE_8__ {int dqi_fmt_id; int dqi_flags; int dqi_dirty_list; struct quota_format_type* dqi_format; } ;
struct TYPE_7__ {int (* read_file_info ) (struct super_block*,int) ;int (* check_quota_file ) (struct super_block*,int) ;} ;
struct TYPE_6__ {int * get_projid; } ;
struct TYPE_5__ {int quota_read; int quota_write; } ;


 int DQF_SYS_FILE ;
 int DQUOT_QUOTA_SYS_FILE ;
 unsigned int DQUOT_USAGE_ENABLED ;
 int EACCES ;
 int EBUSY ;
 int EINVAL ;
 int EIO ;
 int EROFS ;
 int ESRCH ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_RDONLY (struct inode*) ;
 int PRJQUOTA ;
 int S_ISREG (int ) ;
 int S_NOQUOTA ;
 int __dquot_drop (struct inode*) ;
 int add_dquot_ref (struct super_block*,int) ;
 int dq_data_lock ;
 int dq_state_lock ;
 int dquot_disable (struct super_block*,int,unsigned int) ;
 int dquot_state_flag (unsigned int,int) ;
 struct quota_format_type* find_quota_format (int) ;
 int * igrab (struct inode*) ;
 int init_user_ns ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int invalidate_bdev (int ) ;
 int iput (struct inode*) ;
 int put_quota_format (struct quota_format_type*) ;
 struct quota_info* sb_dqopt (struct super_block*) ;
 scalar_t__ sb_has_quota_loaded (struct super_block*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct super_block*,int) ;
 int stub2 (struct super_block*,int) ;
 int sync_filesystem (struct super_block*) ;

__attribute__((used)) static int vfs_load_quota_inode(struct inode *inode, int type, int format_id,
 unsigned int flags)
{
 struct quota_format_type *fmt = find_quota_format(format_id);
 struct super_block *sb = inode->i_sb;
 struct quota_info *dqopt = sb_dqopt(sb);
 int error;

 if (!fmt)
  return -ESRCH;
 if (!S_ISREG(inode->i_mode)) {
  error = -EACCES;
  goto out_fmt;
 }
 if (IS_RDONLY(inode)) {
  error = -EROFS;
  goto out_fmt;
 }
 if (!sb->s_op->quota_write || !sb->s_op->quota_read ||
     (type == PRJQUOTA && sb->dq_op->get_projid == ((void*)0))) {
  error = -EINVAL;
  goto out_fmt;
 }

 if (sb->s_user_ns != &init_user_ns) {
  error = -EINVAL;
  goto out_fmt;
 }

 if (!(flags & DQUOT_USAGE_ENABLED)) {
  error = -EINVAL;
  goto out_fmt;
 }
 if (sb_has_quota_loaded(sb, type)) {
  error = -EBUSY;
  goto out_fmt;
 }

 if (!(dqopt->flags & DQUOT_QUOTA_SYS_FILE)) {






  sync_filesystem(sb);
  invalidate_bdev(sb->s_bdev);
 }

 if (!(dqopt->flags & DQUOT_QUOTA_SYS_FILE)) {



  inode_lock(inode);
  inode->i_flags |= S_NOQUOTA;
  inode_unlock(inode);




  __dquot_drop(inode);
 }

 error = -EIO;
 dqopt->files[type] = igrab(inode);
 if (!dqopt->files[type])
  goto out_file_flags;
 error = -EINVAL;
 if (!fmt->qf_ops->check_quota_file(sb, type))
  goto out_file_init;

 dqopt->ops[type] = fmt->qf_ops;
 dqopt->info[type].dqi_format = fmt;
 dqopt->info[type].dqi_fmt_id = format_id;
 INIT_LIST_HEAD(&dqopt->info[type].dqi_dirty_list);
 error = dqopt->ops[type]->read_file_info(sb, type);
 if (error < 0)
  goto out_file_init;
 if (dqopt->flags & DQUOT_QUOTA_SYS_FILE) {
  spin_lock(&dq_data_lock);
  dqopt->info[type].dqi_flags |= DQF_SYS_FILE;
  spin_unlock(&dq_data_lock);
 }
 spin_lock(&dq_state_lock);
 dqopt->flags |= dquot_state_flag(flags, type);
 spin_unlock(&dq_state_lock);

 error = add_dquot_ref(sb, type);
 if (error)
  dquot_disable(sb, type, flags);

 return error;
out_file_init:
 dqopt->files[type] = ((void*)0);
 iput(inode);
out_file_flags:
 inode_lock(inode);
 inode->i_flags &= ~S_NOQUOTA;
 inode_unlock(inode);
out_fmt:
 put_quota_format(fmt);

 return error;
}

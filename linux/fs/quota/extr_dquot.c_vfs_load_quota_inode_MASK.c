#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct super_block {int /*<<< orphan*/  s_bdev; int /*<<< orphan*/ * s_user_ns; TYPE_2__* dq_op; TYPE_1__* s_op; } ;
struct quota_info {int flags; int /*<<< orphan*/ ** files; TYPE_4__* info; TYPE_3__** ops; } ;
struct quota_format_type {TYPE_3__* qf_ops; } ;
struct inode {int /*<<< orphan*/  i_flags; int /*<<< orphan*/  i_mode; struct super_block* i_sb; } ;
struct TYPE_8__ {int dqi_fmt_id; int /*<<< orphan*/  dqi_flags; int /*<<< orphan*/  dqi_dirty_list; struct quota_format_type* dqi_format; } ;
struct TYPE_7__ {int (* read_file_info ) (struct super_block*,int) ;int /*<<< orphan*/  (* check_quota_file ) (struct super_block*,int) ;} ;
struct TYPE_6__ {int /*<<< orphan*/ * get_projid; } ;
struct TYPE_5__ {int /*<<< orphan*/  quota_read; int /*<<< orphan*/  quota_write; } ;

/* Variables and functions */
 int /*<<< orphan*/  DQF_SYS_FILE ; 
 int DQUOT_QUOTA_SYS_FILE ; 
 unsigned int DQUOT_USAGE_ENABLED ; 
 int EACCES ; 
 int EBUSY ; 
 int EINVAL ; 
 int EIO ; 
 int EROFS ; 
 int ESRCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int PRJQUOTA ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_NOQUOTA ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int FUNC4 (struct super_block*,int) ; 
 int /*<<< orphan*/  dq_data_lock ; 
 int /*<<< orphan*/  dq_state_lock ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,int,unsigned int) ; 
 int FUNC6 (unsigned int,int) ; 
 struct quota_format_type* FUNC7 (int) ; 
 int /*<<< orphan*/ * FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct quota_format_type*) ; 
 struct quota_info* FUNC14 (struct super_block*) ; 
 scalar_t__ FUNC15 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct super_block*,int) ; 
 int FUNC19 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct super_block*) ; 

__attribute__((used)) static int FUNC21(struct inode *inode, int type, int format_id,
	unsigned int flags)
{
	struct quota_format_type *fmt = FUNC7(format_id);
	struct super_block *sb = inode->i_sb;
	struct quota_info *dqopt = FUNC14(sb);
	int error;

	if (!fmt)
		return -ESRCH;
	if (!FUNC2(inode->i_mode)) {
		error = -EACCES;
		goto out_fmt;
	}
	if (FUNC1(inode)) {
		error = -EROFS;
		goto out_fmt;
	}
	if (!sb->s_op->quota_write || !sb->s_op->quota_read ||
	    (type == PRJQUOTA && sb->dq_op->get_projid == NULL)) {
		error = -EINVAL;
		goto out_fmt;
	}
	/* Filesystems outside of init_user_ns not yet supported */
	if (sb->s_user_ns != &init_user_ns) {
		error = -EINVAL;
		goto out_fmt;
	}
	/* Usage always has to be set... */
	if (!(flags & DQUOT_USAGE_ENABLED)) {
		error = -EINVAL;
		goto out_fmt;
	}
	if (FUNC15(sb, type)) {
		error = -EBUSY;
		goto out_fmt;
	}

	if (!(dqopt->flags & DQUOT_QUOTA_SYS_FILE)) {
		/* As we bypass the pagecache we must now flush all the
		 * dirty data and invalidate caches so that kernel sees
		 * changes from userspace. It is not enough to just flush
		 * the quota file since if blocksize < pagesize, invalidation
		 * of the cache could fail because of other unrelated dirty
		 * data */
		FUNC20(sb);
		FUNC11(sb->s_bdev);
	}

	if (!(dqopt->flags & DQUOT_QUOTA_SYS_FILE)) {
		/* We don't want quota and atime on quota files (deadlocks
		 * possible) Also nobody should write to the file - we use
		 * special IO operations which ignore the immutable bit. */
		FUNC9(inode);
		inode->i_flags |= S_NOQUOTA;
		FUNC10(inode);
		/*
		 * When S_NOQUOTA is set, remove dquot references as no more
		 * references can be added
		 */
		FUNC3(inode);
	}

	error = -EIO;
	dqopt->files[type] = FUNC8(inode);
	if (!dqopt->files[type])
		goto out_file_flags;
	error = -EINVAL;
	if (!fmt->qf_ops->check_quota_file(sb, type))
		goto out_file_init;

	dqopt->ops[type] = fmt->qf_ops;
	dqopt->info[type].dqi_format = fmt;
	dqopt->info[type].dqi_fmt_id = format_id;
	FUNC0(&dqopt->info[type].dqi_dirty_list);
	error = dqopt->ops[type]->read_file_info(sb, type);
	if (error < 0)
		goto out_file_init;
	if (dqopt->flags & DQUOT_QUOTA_SYS_FILE) {
		FUNC16(&dq_data_lock);
		dqopt->info[type].dqi_flags |= DQF_SYS_FILE;
		FUNC17(&dq_data_lock);
	}
	FUNC16(&dq_state_lock);
	dqopt->flags |= FUNC6(flags, type);
	FUNC17(&dq_state_lock);

	error = FUNC4(sb, type);
	if (error)
		FUNC5(sb, type, flags);

	return error;
out_file_init:
	dqopt->files[type] = NULL;
	FUNC12(inode);
out_file_flags:
	FUNC9(inode);
	inode->i_flags &= ~S_NOQUOTA;
	FUNC10(inode);
out_fmt:
	FUNC13(fmt);

	return error;
}
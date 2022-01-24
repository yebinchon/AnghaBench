#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct name_snapshot {int /*<<< orphan*/  name; } ;
struct inode {unsigned int i_nlink; TYPE_3__* i_sb; int /*<<< orphan*/  i_flags; TYPE_1__* i_op; } ;
struct dentry {int /*<<< orphan*/  d_name; struct inode* d_inode; } ;
struct TYPE_6__ {unsigned int s_max_links; TYPE_2__* s_type; } ;
struct TYPE_5__ {int fs_flags; } ;
struct TYPE_4__ {int (* rename ) (struct inode*,struct dentry*,struct inode*,struct dentry*,unsigned int) ;} ;

/* Variables and functions */
 int EBUSY ; 
 int EMLINK ; 
 int EPERM ; 
 int FS_RENAME_DOES_D_MOVE ; 
 int /*<<< orphan*/  MAY_WRITE ; 
 unsigned int RENAME_EXCHANGE ; 
 int /*<<< orphan*/  S_DEAD ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*,struct dentry*) ; 
 int FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,struct inode*,int /*<<< orphan*/ *,int,struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int FUNC9 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 scalar_t__ FUNC11 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,struct inode*) ; 
 int FUNC13 (struct inode*,struct dentry*) ; 
 int FUNC14 (struct inode*,struct dentry*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct name_snapshot*) ; 
 int FUNC16 (struct inode*,struct dentry*,struct inode*,struct dentry*,unsigned int) ; 
 int /*<<< orphan*/  FUNC17 (struct dentry*) ; 
 int FUNC18 (struct inode*,struct dentry*,struct inode*,struct dentry*,unsigned int) ; 
 int /*<<< orphan*/  FUNC19 (struct name_snapshot*,struct dentry*) ; 
 int FUNC20 (struct inode*,struct inode**) ; 
 int /*<<< orphan*/  FUNC21 (struct inode*,struct inode*) ; 

int FUNC22(struct inode *old_dir, struct dentry *old_dentry,
	       struct inode *new_dir, struct dentry *new_dentry,
	       struct inode **delegated_inode, unsigned int flags)
{
	int error;
	bool is_dir = FUNC1(old_dentry);
	struct inode *source = old_dentry->d_inode;
	struct inode *target = new_dentry->d_inode;
	bool new_is_dir = false;
	unsigned max_links = new_dir->i_sb->s_max_links;
	struct name_snapshot old_name;

	if (source == target)
		return 0;

	error = FUNC14(old_dir, old_dentry, is_dir);
	if (error)
		return error;

	if (!target) {
		error = FUNC13(new_dir, new_dentry);
	} else {
		new_is_dir = FUNC1(new_dentry);

		if (!(flags & RENAME_EXCHANGE))
			error = FUNC14(new_dir, new_dentry, is_dir);
		else
			error = FUNC14(new_dir, new_dentry, new_is_dir);
	}
	if (error)
		return error;

	if (!old_dir->i_op->rename)
		return -EPERM;

	/*
	 * If we are going to change the parent - check write permissions,
	 * we'll need to flip '..'.
	 */
	if (new_dir != old_dir) {
		if (is_dir) {
			error = FUNC9(source, MAY_WRITE);
			if (error)
				return error;
		}
		if ((flags & RENAME_EXCHANGE) && new_is_dir) {
			error = FUNC9(target, MAY_WRITE);
			if (error)
				return error;
		}
	}

	error = FUNC16(old_dir, old_dentry, new_dir, new_dentry,
				      flags);
	if (error)
		return error;

	FUNC19(&old_name, old_dentry);
	FUNC4(new_dentry);
	if (!is_dir || (flags & RENAME_EXCHANGE))
		FUNC12(source, target);
	else if (target)
		FUNC8(target);

	error = -EBUSY;
	if (FUNC11(old_dentry) || FUNC11(new_dentry))
		goto out;

	if (max_links && new_dir != old_dir) {
		error = -EMLINK;
		if (is_dir && !new_is_dir && new_dir->i_nlink >= max_links)
			goto out;
		if ((flags & RENAME_EXCHANGE) && !is_dir && new_is_dir &&
		    old_dir->i_nlink >= max_links)
			goto out;
	}
	if (!is_dir) {
		error = FUNC20(source, delegated_inode);
		if (error)
			goto out;
	}
	if (target && !new_is_dir) {
		error = FUNC20(target, delegated_inode);
		if (error)
			goto out;
	}
	error = old_dir->i_op->rename(old_dir, old_dentry,
				       new_dir, new_dentry, flags);
	if (error)
		goto out;

	if (!(flags & RENAME_EXCHANGE) && target) {
		if (is_dir) {
			FUNC17(new_dentry);
			target->i_flags |= S_DEAD;
		}
		FUNC5(new_dentry);
		FUNC3(new_dentry);
	}
	if (!(old_dir->i_sb->s_type->fs_flags & FS_RENAME_DOES_D_MOVE)) {
		if (!(flags & RENAME_EXCHANGE))
			FUNC2(old_dentry, new_dentry);
		else
			FUNC0(old_dentry, new_dentry);
	}
out:
	if (!is_dir || (flags & RENAME_EXCHANGE))
		FUNC21(source, target);
	else if (target)
		FUNC10(target);
	FUNC6(new_dentry);
	if (!error) {
		FUNC7(old_dir, new_dir, &old_name.name, is_dir,
			      !(flags & RENAME_EXCHANGE) ? target : NULL, old_dentry);
		if (flags & RENAME_EXCHANGE) {
			FUNC7(new_dir, old_dir, &old_dentry->d_name,
				      new_is_dir, NULL, new_dentry);
		}
	}
	FUNC15(&old_name);

	return error;
}
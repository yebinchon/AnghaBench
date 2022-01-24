#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct dentry {scalar_t__ d_inode; struct dentry* d_parent; TYPE_1__ d_name; int /*<<< orphan*/  d_sb; } ;
struct cred {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ESTALE ; 
 int EXDEV ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct dentry*) ; 
 unsigned int RENAME_EXCHANGE ; 
 unsigned int RENAME_NOREPLACE ; 
 unsigned int RENAME_WHITEOUT ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 int FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  list ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct dentry* FUNC11 (struct dentry*,struct dentry*) ; 
 struct dentry* FUNC12 (int /*<<< orphan*/ ,struct dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct dentry*) ; 
 int FUNC15 (struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,struct dentry*) ; 
 struct dentry* FUNC17 (struct dentry*,int /*<<< orphan*/ *) ; 
 int FUNC18 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC20 (struct dentry*) ; 
 scalar_t__ FUNC21 (struct dentry*) ; 
 struct dentry* FUNC22 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC23 (struct dentry*,int) ; 
 int FUNC24 (scalar_t__,struct dentry*,scalar_t__,struct dentry*,unsigned int) ; 
 int /*<<< orphan*/  FUNC25 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC26 (struct dentry*) ; 
 scalar_t__ FUNC27 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC28 (struct dentry*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC29 (struct dentry*) ; 
 int FUNC30 (struct dentry*) ; 
 struct cred* FUNC31 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (struct dentry*) ; 
 int FUNC33 (struct dentry*,struct dentry*) ; 
 int FUNC34 (struct dentry*,struct dentry*,int) ; 
 int FUNC35 (struct dentry*,int) ; 
 scalar_t__ FUNC36 (struct dentry*) ; 
 scalar_t__ FUNC37 (struct dentry*) ; 
 scalar_t__ FUNC38 (struct dentry*) ; 
 int FUNC39 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC40 (struct cred const*) ; 
 int /*<<< orphan*/  FUNC41 (struct dentry*,struct dentry*) ; 

__attribute__((used)) static int FUNC42(struct inode *olddir, struct dentry *old,
		      struct inode *newdir, struct dentry *new,
		      unsigned int flags)
{
	int err;
	struct dentry *old_upperdir;
	struct dentry *new_upperdir;
	struct dentry *olddentry;
	struct dentry *newdentry;
	struct dentry *trap;
	bool old_opaque;
	bool new_opaque;
	bool cleanup_whiteout = false;
	bool update_nlink = false;
	bool overwrite = !(flags & RENAME_EXCHANGE);
	bool is_dir = FUNC6(old);
	bool new_is_dir = FUNC6(new);
	bool samedir = olddir == newdir;
	struct dentry *opaquedir = NULL;
	const struct cred *old_cred = NULL;
	FUNC1(list);

	err = -EINVAL;
	if (flags & ~(RENAME_EXCHANGE | RENAME_NOREPLACE))
		goto out;

	flags &= ~RENAME_NOREPLACE;

	/* Don't copy up directory trees */
	err = -EXDEV;
	if (!FUNC14(old))
		goto out;
	if (!overwrite && !FUNC14(new))
		goto out;

	if (overwrite && new_is_dir && !FUNC32(new)) {
		err = FUNC15(new, &list);
		if (err)
			goto out;
	}

	if (overwrite) {
		if (FUNC27(old)) {
			if (!FUNC21(new)) {
				/* Whiteout source */
				flags |= RENAME_WHITEOUT;
			} else {
				/* Switch whiteouts */
				flags |= RENAME_EXCHANGE;
			}
		} else if (is_dir && FUNC21(new)) {
			flags |= RENAME_EXCHANGE;
			cleanup_whiteout = true;
		}
	}

	err = FUNC39(old);
	if (err)
		goto out;

	err = FUNC18(old);
	if (err)
		goto out_drop_write;

	err = FUNC18(new->d_parent);
	if (err)
		goto out_drop_write;
	if (!overwrite) {
		err = FUNC18(new);
		if (err)
			goto out_drop_write;
	} else if (FUNC5(new)) {
		err = FUNC30(new);
		if (err)
			goto out_drop_write;

		update_nlink = true;
	}

	old_cred = FUNC31(old->d_sb);

	if (!FUNC10(&list)) {
		opaquedir = FUNC17(new, &list);
		err = FUNC2(opaquedir);
		if (FUNC0(opaquedir)) {
			opaquedir = NULL;
			goto out_revert_creds;
		}
	}

	old_upperdir = FUNC22(old->d_parent);
	new_upperdir = FUNC22(new->d_parent);

	if (!samedir) {
		/*
		 * When moving a merge dir or non-dir with copy up origin into
		 * a new parent, we are marking the new parent dir "impure".
		 * When ovl_iterate() iterates an "impure" upper dir, it will
		 * lookup the origin inodes of the entries to fill d_ino.
		 */
		if (FUNC38(old)) {
			err = FUNC33(new->d_parent, new_upperdir);
			if (err)
				goto out_revert_creds;
		}
		if (!overwrite && FUNC38(new)) {
			err = FUNC33(old->d_parent, old_upperdir);
			if (err)
				goto out_revert_creds;
		}
	}

	trap = FUNC11(new_upperdir, old_upperdir);

	olddentry = FUNC12(old->d_name.name, old_upperdir,
				   old->d_name.len);
	err = FUNC2(olddentry);
	if (FUNC0(olddentry))
		goto out_unlock;

	err = -ESTALE;
	if (!FUNC28(old, olddentry))
		goto out_dput_old;

	newdentry = FUNC12(new->d_name.name, new_upperdir,
				   new->d_name.len);
	err = FUNC2(newdentry);
	if (FUNC0(newdentry))
		goto out_dput_old;

	old_opaque = FUNC20(old);
	new_opaque = FUNC20(new);

	err = -ESTALE;
	if (FUNC5(new) && FUNC22(new)) {
		if (opaquedir) {
			if (newdentry != opaquedir)
				goto out_dput;
		} else {
			if (!FUNC28(new, newdentry))
				goto out_dput;
		}
	} else {
		if (!FUNC7(newdentry) &&
		    (!new_opaque || !FUNC26(newdentry)))
			goto out_dput;
	}

	if (olddentry == trap)
		goto out_dput;
	if (newdentry == trap)
		goto out_dput;

	if (FUNC3(olddentry->d_inode == newdentry->d_inode))
		goto out_dput;

	err = 0;
	if (FUNC37(old))
		err = FUNC35(old, samedir);
	else if (is_dir && !old_opaque && FUNC36(new->d_parent))
		err = FUNC34(old, olddentry, -EXDEV);
	if (err)
		goto out_dput;

	if (!overwrite && FUNC37(new))
		err = FUNC35(new, samedir);
	else if (!overwrite && new_is_dir && !new_opaque &&
		 FUNC36(old->d_parent))
		err = FUNC34(new, newdentry, -EXDEV);
	if (err)
		goto out_dput;

	err = FUNC24(old_upperdir->d_inode, olddentry,
			    new_upperdir->d_inode, newdentry, flags);
	if (err)
		goto out_dput;

	if (cleanup_whiteout)
		FUNC16(old_upperdir->d_inode, newdentry);

	if (overwrite && FUNC5(new)) {
		if (new_is_dir)
			FUNC4(FUNC5(new));
		else
			FUNC9(FUNC5(new));
	}

	FUNC23(old->d_parent, FUNC38(old) ||
			 (!overwrite && FUNC38(new)));
	FUNC23(new->d_parent, FUNC38(old) ||
			 (FUNC5(new) && FUNC38(new)));

	/* copy ctime: */
	FUNC19(FUNC5(olddentry), FUNC5(old));
	if (FUNC5(new) && FUNC22(new))
		FUNC19(FUNC5(newdentry), FUNC5(new));

out_dput:
	FUNC8(newdentry);
out_dput_old:
	FUNC8(olddentry);
out_unlock:
	FUNC41(new_upperdir, old_upperdir);
out_revert_creds:
	FUNC40(old_cred);
	if (update_nlink)
		FUNC29(new);
out_drop_write:
	FUNC25(old);
out:
	FUNC8(opaquedir);
	FUNC13(&list);
	return err;
}
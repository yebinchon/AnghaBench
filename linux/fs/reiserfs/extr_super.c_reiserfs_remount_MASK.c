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
struct super_block {int s_flags; } ;
struct reiserfs_transaction_handle {int dummy; } ;
struct reiserfs_super_block {int dummy; } ;
struct reiserfs_journal {unsigned int j_max_commit_age; unsigned int j_max_trans_age; unsigned int j_default_max_commit_age; int j_errno; int j_must_wait; } ;
typedef  int /*<<< orphan*/  qf_names ;
struct TYPE_2__ {unsigned long s_mount_opt; char** s_qf_names; scalar_t__ s_mount_state; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int JOURNAL_MAX_TRANS_AGE ; 
 int REISERFS_ATTRS ; 
 int REISERFS_BARRIER_FLUSH ; 
 int REISERFS_BARRIER_NONE ; 
 int REISERFS_ERROR_CONTINUE ; 
 scalar_t__ REISERFS_ERROR_FS ; 
 int REISERFS_ERROR_PANIC ; 
 int REISERFS_ERROR_RO ; 
 int REISERFS_GRPQUOTA ; 
 int REISERFS_HASHED_RELOCATION ; 
 int REISERFS_LARGETAIL ; 
 int REISERFS_MAXQUOTAS ; 
 int REISERFS_NO_BORDER ; 
 int REISERFS_NO_UNHASHED_RELOCATION ; 
 int REISERFS_POSIXACL ; 
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int REISERFS_SMALLTAIL ; 
 int REISERFS_TEST4 ; 
 int REISERFS_USRQUOTA ; 
 scalar_t__ REISERFS_VALID_FS ; 
 int REISERFS_XATTRS_USER ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*) ; 
 struct reiserfs_super_block* FUNC2 (struct super_block*) ; 
 struct reiserfs_journal* FUNC3 (struct super_block*) ; 
 int SB_RDONLY ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*,int) ; 
 int FUNC5 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct super_block*,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct super_block*,char**,unsigned int*) ; 
 int FUNC11 (struct reiserfs_transaction_handle*,struct super_block*,int) ; 
 int FUNC12 (struct reiserfs_transaction_handle*) ; 
 int /*<<< orphan*/  FUNC13 (struct reiserfs_transaction_handle*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 char* FUNC15 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char**,char**,int) ; 
 int /*<<< orphan*/  FUNC17 (struct super_block*) ; 
 scalar_t__ FUNC18 (struct reiserfs_journal*) ; 
 int /*<<< orphan*/  FUNC19 (struct super_block*,char*,unsigned long*,unsigned long*,int /*<<< orphan*/ *,unsigned int*,char**,unsigned int*) ; 
 int /*<<< orphan*/  FUNC20 (struct super_block*,int /*<<< orphan*/ ,int) ; 
 int FUNC21 (struct super_block*,unsigned long) ; 
 int /*<<< orphan*/  FUNC22 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC23 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC24 (struct super_block*,int) ; 
 scalar_t__ FUNC25 (struct reiserfs_super_block*) ; 
 scalar_t__ FUNC26 (struct super_block*) ; 
 scalar_t__ FUNC27 (struct reiserfs_super_block*) ; 
 int /*<<< orphan*/  FUNC28 (struct reiserfs_super_block*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC29 (struct reiserfs_super_block*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC30 (struct super_block*) ; 

__attribute__((used)) static int FUNC31(struct super_block *s, int *mount_flags, char *arg)
{
	struct reiserfs_super_block *rs;
	struct reiserfs_transaction_handle th;
	unsigned long blocks;
	unsigned long mount_options = FUNC0(s)->s_mount_opt;
	unsigned long safe_mask = 0;
	unsigned int commit_max_age = (unsigned int)-1;
	struct reiserfs_journal *journal = FUNC3(s);
	char *new_opts;
	int err;
	char *qf_names[REISERFS_MAXQUOTAS];
	unsigned int qfmt = 0;
#ifdef CONFIG_QUOTA
	int i;
#endif

	new_opts = FUNC15(arg, GFP_KERNEL);
	if (arg && !new_opts)
		return -ENOMEM;

	FUNC30(s);
	FUNC22(s);

#ifdef CONFIG_QUOTA
	memcpy(qf_names, REISERFS_SB(s)->s_qf_names, sizeof(qf_names));
#endif

	rs = FUNC2(s);

	if (!FUNC19
	    (s, arg, &mount_options, &blocks, NULL, &commit_max_age,
	    qf_names, &qfmt)) {
#ifdef CONFIG_QUOTA
		for (i = 0; i < REISERFS_MAXQUOTAS; i++)
			if (qf_names[i] != REISERFS_SB(s)->s_qf_names[i])
				kfree(qf_names[i]);
#endif
		err = -EINVAL;
		goto out_err_unlock;
	}
#ifdef CONFIG_QUOTA
	handle_quota_files(s, qf_names, &qfmt);
#endif

	FUNC7(s);

	/* Add options that are safe here */
	safe_mask |= 1 << REISERFS_SMALLTAIL;
	safe_mask |= 1 << REISERFS_LARGETAIL;
	safe_mask |= 1 << REISERFS_NO_BORDER;
	safe_mask |= 1 << REISERFS_NO_UNHASHED_RELOCATION;
	safe_mask |= 1 << REISERFS_HASHED_RELOCATION;
	safe_mask |= 1 << REISERFS_TEST4;
	safe_mask |= 1 << REISERFS_ATTRS;
	safe_mask |= 1 << REISERFS_XATTRS_USER;
	safe_mask |= 1 << REISERFS_POSIXACL;
	safe_mask |= 1 << REISERFS_BARRIER_FLUSH;
	safe_mask |= 1 << REISERFS_BARRIER_NONE;
	safe_mask |= 1 << REISERFS_ERROR_RO;
	safe_mask |= 1 << REISERFS_ERROR_CONTINUE;
	safe_mask |= 1 << REISERFS_ERROR_PANIC;
	safe_mask |= 1 << REISERFS_USRQUOTA;
	safe_mask |= 1 << REISERFS_GRPQUOTA;

	/*
	 * Update the bitmask, taking care to keep
	 * the bits we're not allowed to change here
	 */
	FUNC0(s)->s_mount_opt =
	    (FUNC0(s)->
	     s_mount_opt & ~safe_mask) | (mount_options & safe_mask);

	if (commit_max_age != 0 && commit_max_age != (unsigned int)-1) {
		journal->j_max_commit_age = commit_max_age;
		journal->j_max_trans_age = commit_max_age;
	} else if (commit_max_age == 0) {
		/* 0 means restore defaults. */
		journal->j_max_commit_age = journal->j_default_max_commit_age;
		journal->j_max_trans_age = JOURNAL_MAX_TRANS_AGE;
	}

	if (blocks) {
		err = FUNC21(s, blocks);
		if (err != 0)
			goto out_err_unlock;
	}

	if (*mount_flags & SB_RDONLY) {
		FUNC23(s);
		FUNC24(s, *mount_flags);
		/* remount read-only */
		if (FUNC26(s))
			/* it is read-only already */
			goto out_ok_unlocked;

		err = FUNC5(s, -1);
		if (err < 0)
			goto out_err;

		/* try to remount file system with read-only permissions */
		if (FUNC27(rs) == REISERFS_VALID_FS
		    || FUNC0(s)->s_mount_state != REISERFS_VALID_FS) {
			goto out_ok_unlocked;
		}

		FUNC22(s);

		err = FUNC11(&th, s, 10);
		if (err)
			goto out_err_unlock;

		/* Mounting a rw partition read-only. */
		FUNC20(s, FUNC1(s), 1);
		FUNC29(rs, FUNC0(s)->s_mount_state);
		FUNC13(&th, FUNC1(s));
	} else {
		/* remount read-write */
		if (!FUNC26(s)) {
			FUNC23(s);
			FUNC24(s, *mount_flags);
			goto out_ok_unlocked;	/* We are read-write already */
		}

		if (FUNC18(journal)) {
			err = journal->j_errno;
			goto out_err_unlock;
		}

		FUNC9(s, mount_options);
		FUNC8(s, mount_options);
		FUNC0(s)->s_mount_state = FUNC27(rs);

		/* now it is safe to call journal_begin */
		s->s_flags &= ~SB_RDONLY;
		err = FUNC11(&th, s, 10);
		if (err)
			goto out_err_unlock;

		/* Mount a partition which is read-only, read-write */
		FUNC20(s, FUNC1(s), 1);
		FUNC0(s)->s_mount_state = FUNC27(rs);
		s->s_flags &= ~SB_RDONLY;
		FUNC29(rs, REISERFS_ERROR_FS);
		if (!FUNC17(s))
			FUNC28(rs, FUNC25(rs) + 1);
		/* mark_buffer_dirty (SB_BUFFER_WITH_SB (s), 1); */
		FUNC13(&th, FUNC1(s));
		FUNC0(s)->s_mount_state = REISERFS_VALID_FS;
	}
	/* this will force a full flush of all journal lists */
	FUNC3(s)->j_must_wait = 1;
	err = FUNC12(&th);
	if (err)
		goto out_err_unlock;

	FUNC23(s);
	if (!(*mount_flags & SB_RDONLY)) {
		FUNC4(s, -1);
		FUNC22(s);
		FUNC6(s);
		FUNC23(s);
		FUNC24(s, *mount_flags);
	}

out_ok_unlocked:
	return 0;

out_err_unlock:
	FUNC23(s);
out_err:
	FUNC14(new_opts);
	return err;
}
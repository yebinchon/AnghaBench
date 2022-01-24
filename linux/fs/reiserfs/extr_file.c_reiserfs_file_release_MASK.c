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
struct reiserfs_transaction_handle {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_mode; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int i_flags; scalar_t__ i_prealloc_count; int /*<<< orphan*/  tailpack; int /*<<< orphan*/  openers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int i_pack_on_close_mask ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int FUNC6 (struct reiserfs_transaction_handle*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct reiserfs_transaction_handle*) ; 
 int FUNC8 (struct reiserfs_transaction_handle*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct reiserfs_transaction_handle*,struct inode*) ; 
 int FUNC12 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (struct inode*) ; 

__attribute__((used)) static int FUNC18(struct inode *inode, struct file *filp)
{

	struct reiserfs_transaction_handle th;
	int err;
	int jbegin_failure = 0;

	FUNC0(!FUNC2(inode->i_mode));

        if (FUNC3(&FUNC1(inode)->openers, -1, 1))
		return 0;

	FUNC9(&FUNC1(inode)->tailpack);

        if (!FUNC4(&FUNC1(inode)->openers)) {
		FUNC10(&FUNC1(inode)->tailpack);
		return 0;
	}

	/* fast out for when nothing needs to be done */
	if ((!(FUNC1(inode)->i_flags & i_pack_on_close_mask) ||
	     !FUNC17(inode)) &&
	    FUNC1(inode)->i_prealloc_count <= 0) {
		FUNC10(&FUNC1(inode)->tailpack);
		return 0;
	}

	FUNC15(inode->i_sb);
	/*
	 * freeing preallocation only involves relogging blocks that
	 * are already in the current transaction.  preallocation gets
	 * freed at the end of each transaction, so it is impossible for
	 * us to log any additional blocks (including quota blocks)
	 */
	err = FUNC6(&th, inode->i_sb, 1);
	if (err) {
		/*
		 * uh oh, we can't allow the inode to go away while there
		 * is still preallocation blocks pending.  Try to join the
		 * aborted transaction
		 */
		jbegin_failure = err;
		err = FUNC8(&th, inode->i_sb);

		if (err) {
			/*
			 * hmpf, our choices here aren't good.  We can pin
			 * the inode which will disallow unmount from ever
			 * happening, we can do nothing, which will corrupt
			 * random memory on unmount, or we can forcibly
			 * remove the file from the preallocation list, which
			 * will leak blocks on disk.  Lets pin the inode
			 * and let the admin know what is going on.
			 */
			FUNC5(inode);
			FUNC14(inode->i_sb, "clm-9001",
					 "pinning inode %lu because the "
					 "preallocation can't be freed",
					 inode->i_ino);
			goto out;
		}
	}
	FUNC13(inode);

#ifdef REISERFS_PREALLOCATE
	reiserfs_discard_prealloc(&th, inode);
#endif
	err = FUNC7(&th);

	/* copy back the error code from journal_begin */
	if (!err)
		err = jbegin_failure;

	if (!err &&
	    (FUNC1(inode)->i_flags & i_pack_on_close_mask) &&
	    FUNC17(inode)) {

		/*
		 * if regular file is released by last holder and it has been
		 * appended (we append by unformatted node only) or its direct
		 * item(s) had to be converted, then it may have to be
		 * indirect2direct converted
		 */
		err = FUNC12(inode, 0);
	}
out:
	FUNC16(inode->i_sb);
	FUNC10(&FUNC1(inode)->tailpack);
	return err;
}
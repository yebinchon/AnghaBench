#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ocfs2_triggers {int /*<<< orphan*/  ot_triggers; } ;
struct ocfs2_super {int /*<<< orphan*/  journal; int /*<<< orphan*/  sb; } ;
struct ocfs2_caching_info {int /*<<< orphan*/  ci_ops; } ;
struct buffer_head {int b_state; scalar_t__ b_blocknr; int /*<<< orphan*/  b_size; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  ML_ERROR ; 
#define  OCFS2_JOURNAL_ACCESS_CREATE 130 
#define  OCFS2_JOURNAL_ACCESS_UNDO 129 
#define  OCFS2_JOURNAL_ACCESS_WRITE 128 
 struct ocfs2_super* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 scalar_t__ FUNC3 (struct buffer_head*) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC9 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC10 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC11 (struct ocfs2_caching_info*) ; 
 int /*<<< orphan*/  FUNC12 (struct ocfs2_caching_info*) ; 
 int /*<<< orphan*/  FUNC13 (struct ocfs2_caching_info*) ; 
 scalar_t__ FUNC14 (struct ocfs2_caching_info*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct ocfs2_caching_info*) ; 
 int /*<<< orphan*/  FUNC16 (unsigned long long,unsigned long long,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct buffer_head*) ; 

__attribute__((used)) static int FUNC18(handle_t *handle,
				  struct ocfs2_caching_info *ci,
				  struct buffer_head *bh,
				  struct ocfs2_triggers *triggers,
				  int type)
{
	int status;
	struct ocfs2_super *osb =
		FUNC1(FUNC11(ci));

	FUNC0(!ci || !ci->ci_ops);
	FUNC0(!handle);
	FUNC0(!bh);

	FUNC16(
		(unsigned long long)FUNC14(ci),
		(unsigned long long)bh->b_blocknr, type, bh->b_size);

	/* we can safely remove this assertion after testing. */
	if (!FUNC2(bh)) {
		FUNC8(ML_ERROR, "giving me a buffer that's not uptodate!\n");
		FUNC8(ML_ERROR, "b_blocknr=%llu, b_state=0x%lx\n",
		     (unsigned long long)bh->b_blocknr, bh->b_state);

		FUNC7(bh);
		/*
		 * A previous transaction with a couple of buffer heads fail
		 * to checkpoint, so all the bhs are marked as BH_Write_EIO.
		 * For current transaction, the bh is just among those error
		 * bhs which previous transaction handle. We can't just clear
		 * its BH_Write_EIO and reuse directly, since other bhs are
		 * not written to disk yet and that will cause metadata
		 * inconsistency. So we should set fs read-only to avoid
		 * further damage.
		 */
		if (FUNC3(bh) && !FUNC2(bh)) {
			FUNC17(bh);
			return FUNC9(osb->sb, "A previous attempt to "
					"write this buffer head failed\n");
		}
		FUNC17(bh);
	}

	/* Set the current transaction information on the ci so
	 * that the locking code knows whether it can drop it's locks
	 * on this ci or not. We're protected from the commit
	 * thread updating the current transaction id until
	 * ocfs2_commit_trans() because ocfs2_start_trans() took
	 * j_trans_barrier for us. */
	FUNC15(osb->journal, ci);

	FUNC12(ci);
	switch (type) {
	case OCFS2_JOURNAL_ACCESS_CREATE:
	case OCFS2_JOURNAL_ACCESS_WRITE:
		status = FUNC5(handle, bh);
		break;

	case OCFS2_JOURNAL_ACCESS_UNDO:
		status = FUNC4(handle, bh);
		break;

	default:
		status = -EINVAL;
		FUNC8(ML_ERROR, "Unknown access type!\n");
	}
	if (!status && FUNC10(osb) && triggers)
		FUNC6(bh, &triggers->ot_triggers);
	FUNC13(ci);

	if (status < 0)
		FUNC8(ML_ERROR, "Error %d getting %d access to buffer!\n",
		     status, type);

	return status;
}
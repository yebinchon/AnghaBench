#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct ocfs2_dinode {int i_flags; int i_fs_generation; int /*<<< orphan*/  i_check; int /*<<< orphan*/  i_blkno; } ;
struct buffer_head {scalar_t__ b_blocknr; scalar_t__ b_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  fs_generation; } ;

/* Variables and functions */
 int /*<<< orphan*/  ML_ERROR ; 
 int OCFS2_FILECHECK_ERR_INJBD ; 
 int OCFS2_FILECHECK_ERR_INVALIDINO ; 
 int OCFS2_FILECHECK_ERR_READONLY ; 
 int OCFS2_FILECHECK_ERR_VALIDFLAG ; 
 int /*<<< orphan*/  FUNC0 (struct ocfs2_dinode*) ; 
 TYPE_1__* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  OCFS2_VALID_FL ; 
 scalar_t__ FUNC2 (struct buffer_head*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,unsigned long long,...) ; 
 int /*<<< orphan*/  FUNC9 (struct super_block*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct super_block*,struct buffer_head*) ; 
 scalar_t__ FUNC11 (TYPE_1__*) ; 
 scalar_t__ FUNC12 (TYPE_1__*) ; 
 scalar_t__ FUNC13 (struct super_block*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (unsigned long long) ; 

__attribute__((used)) static int FUNC15(struct super_block *sb,
					      struct buffer_head *bh)
{
	int changed = 0;
	struct ocfs2_dinode *di = (struct ocfs2_dinode *)bh->b_data;

	if (!FUNC10(sb, bh))
		return 0;

	FUNC14(
		(unsigned long long)bh->b_blocknr);

	if (FUNC11(FUNC1(sb)) ||
	    FUNC12(FUNC1(sb))) {
		FUNC8(ML_ERROR,
		     "Filecheck: cannot repair dinode #%llu "
		     "on readonly filesystem\n",
		     (unsigned long long)bh->b_blocknr);
		return -OCFS2_FILECHECK_ERR_READONLY;
	}

	if (FUNC2(bh)) {
		FUNC8(ML_ERROR,
		     "Filecheck: cannot repair dinode #%llu, "
		     "its buffer is in jbd\n",
		     (unsigned long long)bh->b_blocknr);
		return -OCFS2_FILECHECK_ERR_INJBD;
	}

	if (!FUNC0(di)) {
		/* Cannot fix invalid inode block */
		return -OCFS2_FILECHECK_ERR_INVALIDINO;
	}

	if (!(di->i_flags & FUNC3(OCFS2_VALID_FL))) {
		/* Cannot just add VALID_FL flag back as a fix,
		 * need more things to check here.
		 */
		return -OCFS2_FILECHECK_ERR_VALIDFLAG;
	}

	if (FUNC6(di->i_blkno) != bh->b_blocknr) {
		di->i_blkno = FUNC4(bh->b_blocknr);
		changed = 1;
		FUNC8(ML_ERROR,
		     "Filecheck: reset dinode #%llu: i_blkno to %llu\n",
		     (unsigned long long)bh->b_blocknr,
		     (unsigned long long)FUNC6(di->i_blkno));
	}

	if (FUNC5(di->i_fs_generation) !=
	    FUNC1(sb)->fs_generation) {
		di->i_fs_generation = FUNC3(FUNC1(sb)->fs_generation);
		changed = 1;
		FUNC8(ML_ERROR,
		     "Filecheck: reset dinode #%llu: fs_generation to %u\n",
		     (unsigned long long)bh->b_blocknr,
		     FUNC5(di->i_fs_generation));
	}

	if (changed || FUNC13(sb, bh->b_data, &di->i_check)) {
		FUNC9(sb, bh->b_data, &di->i_check);
		FUNC7(bh);
		FUNC8(ML_ERROR,
		     "Filecheck: reset dinode #%llu: compute meta ecc\n",
		     (unsigned long long)bh->b_blocknr);
	}

	return 0;
}
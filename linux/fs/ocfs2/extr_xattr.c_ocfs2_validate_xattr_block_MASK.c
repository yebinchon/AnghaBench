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
struct super_block {int dummy; } ;
struct ocfs2_xattr_block {int /*<<< orphan*/  xb_fs_generation; int /*<<< orphan*/  xb_blkno; int /*<<< orphan*/  xb_signature; int /*<<< orphan*/  xb_check; } ;
struct buffer_head {scalar_t__ b_blocknr; scalar_t__ b_data; } ;
struct TYPE_2__ {unsigned long long fs_generation; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ocfs2_xattr_block*) ; 
 TYPE_1__* FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 unsigned long long FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct super_block*,char*,unsigned long long,unsigned long long,...) ; 
 int FUNC7 (struct super_block*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long long) ; 

__attribute__((used)) static int FUNC9(struct super_block *sb,
				      struct buffer_head *bh)
{
	int rc;
	struct ocfs2_xattr_block *xb =
		(struct ocfs2_xattr_block *)bh->b_data;

	FUNC8((unsigned long long)bh->b_blocknr);

	FUNC0(!FUNC3(bh));

	/*
	 * If the ecc fails, we return the error but otherwise
	 * leave the filesystem running.  We know any error is
	 * local to this block.
	 */
	rc = FUNC7(sb, bh->b_data, &xb->xb_check);
	if (rc)
		return rc;

	/*
	 * Errors after here are fatal
	 */

	if (!FUNC1(xb)) {
		return FUNC6(sb,
				   "Extended attribute block #%llu has bad signature %.*s\n",
				   (unsigned long long)bh->b_blocknr, 7,
				   xb->xb_signature);
	}

	if (FUNC5(xb->xb_blkno) != bh->b_blocknr) {
		return FUNC6(sb,
				   "Extended attribute block #%llu has an invalid xb_blkno of %llu\n",
				   (unsigned long long)bh->b_blocknr,
				   (unsigned long long)FUNC5(xb->xb_blkno));
	}

	if (FUNC4(xb->xb_fs_generation) != FUNC2(sb)->fs_generation) {
		return FUNC6(sb,
				   "Extended attribute block #%llu has an invalid xb_fs_generation of #%u\n",
				   (unsigned long long)bh->b_blocknr,
				   FUNC4(xb->xb_fs_generation));
	}

	return 0;
}
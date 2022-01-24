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
struct super_block {int dummy; } ;
struct ocfs2_dir_block_trailer {int /*<<< orphan*/  db_check; } ;
struct buffer_head {scalar_t__ b_blocknr; int /*<<< orphan*/  b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned long long) ; 
 struct ocfs2_dir_block_trailer* FUNC3 (struct buffer_head*,struct super_block*) ; 
 int FUNC4 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long long) ; 

__attribute__((used)) static int FUNC6(struct super_block *sb,
				    struct buffer_head *bh)
{
	int rc;
	struct ocfs2_dir_block_trailer *trailer =
		FUNC3(bh, sb);


	/*
	 * We don't validate dirents here, that's handled
	 * in-place when the code walks them.
	 */
	FUNC5((unsigned long long)bh->b_blocknr);

	FUNC0(!FUNC1(bh));

	/*
	 * If the ecc fails, we return the error but otherwise
	 * leave the filesystem running.  We know any error is
	 * local to this block.
	 *
	 * Note that we are safe to call this even if the directory
	 * doesn't have a trailer.  Filesystems without metaecc will do
	 * nothing, and filesystems with it will have one.
	 */
	rc = FUNC4(sb, bh->b_data, &trailer->db_check);
	if (rc)
		FUNC2(ML_ERROR, "Checksum failed for dinode %llu\n",
		     (unsigned long long)bh->b_blocknr);

	return rc;
}
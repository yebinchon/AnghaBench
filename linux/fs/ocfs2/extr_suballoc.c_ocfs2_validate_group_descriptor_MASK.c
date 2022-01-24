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
struct ocfs2_group_desc {int /*<<< orphan*/  bg_check; } ;
struct buffer_head {scalar_t__ b_data; scalar_t__ b_blocknr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int FUNC2 (struct super_block*,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct super_block*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long long) ; 

__attribute__((used)) static int FUNC5(struct super_block *sb,
					   struct buffer_head *bh)
{
	int rc;
	struct ocfs2_group_desc *gd = (struct ocfs2_group_desc *)bh->b_data;

	FUNC4(
					(unsigned long long)bh->b_blocknr);

	FUNC0(!FUNC1(bh));

	/*
	 * If the ecc fails, we return the error but otherwise
	 * leave the filesystem running.  We know any error is
	 * local to this block.
	 */
	rc = FUNC3(sb, bh->b_data, &gd->bg_check);
	if (rc)
		return rc;

	/*
	 * Errors after here are fatal.
	 */

	return FUNC2(sb, bh, 0);
}
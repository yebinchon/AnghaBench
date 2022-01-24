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
struct super_block {int /*<<< orphan*/  s_blocksize; } ;
struct ocfs2_disk_dqtrailer {int /*<<< orphan*/  dq_check; } ;
struct buffer_head {int /*<<< orphan*/  b_data; scalar_t__ b_blocknr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 struct ocfs2_disk_dqtrailer* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long long) ; 

int FUNC5(struct super_block *sb, struct buffer_head *bh)
{
	struct ocfs2_disk_dqtrailer *dqt =
		FUNC2(sb->s_blocksize, bh->b_data);

	FUNC4((unsigned long long)bh->b_blocknr);

	FUNC0(!FUNC1(bh));

	/*
	 * If the ecc fails, we return the error but otherwise
	 * leave the filesystem running.  We know any error is
	 * local to this block.
	 */
	return FUNC3(sb, bh->b_data, &dqt->dq_check);
}
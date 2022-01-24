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
typedef  scalar_t__ u64 ;
struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (char*,struct super_block*,unsigned long long,unsigned long long,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct super_block*,unsigned long long,unsigned long long,int) ; 
 int FUNC2 (struct super_block*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

void FUNC4(struct inode *ip, u64 blkno, u64 nblocks)
{
	struct super_block *sb = ip->i_sb;
	int r = 0;

	r = FUNC2(sb, blkno, nblocks, GFP_NOFS, 0);
	if (FUNC3(r != 0)) {
		FUNC0("JFS: sb_issue_discard(%p, %llu, %llu, GFP_NOFS, 0) = %d => failed!",
			sb, (unsigned long long)blkno,
			(unsigned long long)nblocks, r);
	}

	FUNC1("JFS: sb_issue_discard(%p, %llu, %llu, GFP_NOFS, 0) = %d",
		sb, (unsigned long long)blkno,
		(unsigned long long)nblocks, r);

	return;
}
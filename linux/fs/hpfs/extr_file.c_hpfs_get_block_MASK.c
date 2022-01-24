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
struct inode {int /*<<< orphan*/  i_sb; scalar_t__ i_blocks; int /*<<< orphan*/  i_ino; } ;
struct buffer_head {int b_size; } ;
typedef  int sector_t ;
typedef  int secno ;
struct TYPE_2__ {int mmu_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EIO ; 
 int ENOSPC ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int FUNC2 (struct inode*,int,unsigned int*) ; 
 TYPE_1__* FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_head*) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(struct inode *inode, sector_t iblock, struct buffer_head *bh_result, int create)
{
	int r;
	secno s;
	unsigned n_secs;
	FUNC4(inode->i_sb);
	s = FUNC2(inode, iblock, &n_secs);
	if (s) {
		if (bh_result->b_size >> 9 < n_secs)
			n_secs = bh_result->b_size >> 9;
		n_secs = FUNC6(inode->i_sb, s, n_secs);
		if (FUNC11(!n_secs)) {
			s = FUNC5(inode->i_sb, s);
			n_secs = 1;
		}
		FUNC9(bh_result, inode->i_sb, s);
		bh_result->b_size = n_secs << 9;
		goto ret_0;
	}
	if (!create) goto ret_0;
	if (iblock<<9 != FUNC3(inode)->mmu_private) {
		FUNC0();
		r = -EIO;
		goto ret_r;
	}
	if ((s = FUNC1(inode->i_sb, inode->i_ino, 1, inode->i_blocks - 1)) == -1) {
		FUNC7(inode->i_sb, inode->i_ino, 1, inode->i_blocks - 1);
		r = -ENOSPC;
		goto ret_r;
	}
	inode->i_blocks++;
	FUNC3(inode)->mmu_private += 512;
	FUNC10(bh_result);
	FUNC9(bh_result, inode->i_sb, FUNC5(inode->i_sb, s));
	ret_0:
	r = 0;
	ret_r:
	FUNC8(inode->i_sb);
	return r;
}
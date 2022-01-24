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
struct ufs_sb_private_info {unsigned int s_cssize; unsigned int s_fsize; unsigned int s_fshift; unsigned int s_fpb; unsigned int s_bsize; unsigned int s_ncg; scalar_t__ s_csaddr; } ;
struct ufs_sb_info {unsigned int s_cg_loaded; unsigned char** s_ucpi; unsigned char* s_ucg; scalar_t__ s_csp; struct ufs_sb_private_info* s_uspi; } ;
struct ufs_buffer_head {int dummy; } ;
struct super_block {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 unsigned int UFS_MAX_GROUP_LOADED ; 
 struct ufs_sb_info* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 struct ufs_buffer_head* FUNC4 (struct super_block*,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct ufs_buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct ufs_buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct ufs_buffer_head*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ufs_buffer_head*,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC10 (struct super_block*,unsigned int) ; 

__attribute__((used)) static void FUNC11(struct super_block *sb)
{
	struct ufs_sb_info *sbi = FUNC1(sb);
	struct ufs_sb_private_info *uspi = sbi->s_uspi;
	struct ufs_buffer_head * ubh;
	unsigned char * base, * space;
	unsigned blks, size, i;

	
	FUNC0("ENTER\n");

	FUNC9(sb);
	size = uspi->s_cssize;
	blks = (size + uspi->s_fsize - 1) >> uspi->s_fshift;
	base = space = (char*) sbi->s_csp;
	for (i = 0; i < blks; i += uspi->s_fpb) {
		size = uspi->s_bsize;
		if (i + uspi->s_fpb > blks)
			size = (blks - i) * uspi->s_fsize;

		ubh = FUNC4(sb, uspi->s_csaddr + i, size);

		FUNC8 (ubh, space, size);
		space += size;
		FUNC7 (ubh, 1);
		FUNC6 (ubh);
		FUNC5 (ubh);
	}
	for (i = 0; i < sbi->s_cg_loaded; i++) {
		FUNC10 (sb, i);
		FUNC3 (sbi->s_ucpi[i]);
	}
	for (; i < UFS_MAX_GROUP_LOADED; i++) 
		FUNC3 (sbi->s_ucpi[i]);
	for (i = 0; i < uspi->s_ncg; i++) 
		FUNC2 (sbi->s_ucg[i]);
	FUNC3 (sbi->s_ucg);
	FUNC3 (base);

	FUNC0("EXIT\n");
}
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
typedef  int uint ;
struct metapage {scalar_t__ data; } ;
struct jfs_sb_info {int l2nbperpage; int /*<<< orphan*/  gengen; int /*<<< orphan*/  ait2; } ;
struct inode {int i_ino; int /*<<< orphan*/  i_sb; } ;
struct dinode {int /*<<< orphan*/  di_gengen; int /*<<< orphan*/  di_xtroot; } ;
typedef  int ino_t ;
struct TYPE_2__ {int /*<<< orphan*/  i_xtroot; } ;

/* Variables and functions */
 int AITBL_OFF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FILESYSTEM_I ; 
 int INOSPEREXT ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 struct jfs_sb_info* FUNC2 (int /*<<< orphan*/ ) ; 
 int L2PSIZE ; 
 int /*<<< orphan*/  PSIZE ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct dinode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct metapage* FUNC8 (struct inode*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct metapage*) ; 

void FUNC10(struct inode *ip, int secondary)
{
	struct jfs_sb_info *sbi = FUNC2(ip->i_sb);
	uint address;
	struct dinode *dp;
	ino_t inum = ip->i_ino;
	struct metapage *mp;

	if (secondary)
		address = FUNC3(&sbi->ait2) >> sbi->l2nbperpage;
	else
		address = AITBL_OFF >> L2PSIZE;

	FUNC0(inum < INOSPEREXT);

	address += inum >> 3;	/* 8 inodes per 4K page */

	/* read the page of fixed disk inode (AIT) in raw mode */
	mp = FUNC8(ip, address << sbi->l2nbperpage, PSIZE, 1);
	if (mp == NULL) {
		FUNC6("diWriteSpecial: failed to read aggregate inode extent!");
		return;
	}

	/* get the pointer to the disk inode of interest */
	dp = (struct dinode *) (mp->data);
	dp += inum % 8;		/* 8 inodes per 4K page */

	/* copy on-disk inode to in-memory inode */
	FUNC4(dp, ip);
	FUNC7(&dp->di_xtroot, &FUNC1(ip)->i_xtroot, 288);

	if (inum == FILESYSTEM_I)
		dp->di_gengen = FUNC5(sbi->gengen);

	/* write the page */
	FUNC9(mp);
}
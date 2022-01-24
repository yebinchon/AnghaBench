#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint ;
struct super_block {int dummy; } ;
struct metapage {scalar_t__ data; } ;
struct jfs_sb_info {int l2nbperpage; scalar_t__ ipaimap2; scalar_t__ ipaimap; void* inostamp; void* gengen; int /*<<< orphan*/  ait2; } ;
struct inode {int i_ino; int /*<<< orphan*/  i_flags; TYPE_1__* i_mapping; } ;
struct dinode {int /*<<< orphan*/  di_inostamp; int /*<<< orphan*/  di_gengen; } ;
typedef  int ino_t ;
struct TYPE_4__ {scalar_t__ ipimap; } ;
struct TYPE_3__ {int /*<<< orphan*/ * a_ops; } ;

/* Variables and functions */
 int AITBL_OFF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FILESYSTEM_I ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int INOSPEREXT ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 struct jfs_sb_info* FUNC2 (struct super_block*) ; 
 int L2PSIZE ; 
 int /*<<< orphan*/  PSIZE ; 
 int /*<<< orphan*/  S_NOQUOTA ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct dinode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  jfs_metapage_aops ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct inode* FUNC10 (struct super_block*) ; 
 struct metapage* FUNC11 (struct inode*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct metapage*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,int) ; 

struct inode *FUNC14(struct super_block *sb, ino_t inum, int secondary)
{
	struct jfs_sb_info *sbi = FUNC2(sb);
	uint address;
	struct dinode *dp;
	struct inode *ip;
	struct metapage *mp;

	ip = FUNC10(sb);
	if (ip == NULL) {
		FUNC7("diReadSpecial: new_inode returned NULL!");
		return ip;
	}

	if (secondary) {
		address = FUNC3(&sbi->ait2) >> sbi->l2nbperpage;
		FUNC1(ip)->ipimap = sbi->ipaimap2;
	} else {
		address = AITBL_OFF >> L2PSIZE;
		FUNC1(ip)->ipimap = sbi->ipaimap;
	}

	FUNC0(inum < INOSPEREXT);

	ip->i_ino = inum;

	address += inum >> 3;	/* 8 inodes per 4K page */

	/* read the page of fixed disk inode (AIT) in raw mode */
	mp = FUNC11(ip, address << sbi->l2nbperpage, PSIZE, 1);
	if (mp == NULL) {
		FUNC13(ip, 1);	/* Don't want iput() deleting it */
		FUNC6(ip);
		return (NULL);
	}

	/* get the pointer to the disk inode of interest */
	dp = (struct dinode *) (mp->data);
	dp += inum % 8;		/* 8 inodes per 4K page */

	/* copy on-disk inode to in-memory inode */
	if ((FUNC4(dp, ip)) != 0) {
		/* handle bad return by returning NULL for ip */
		FUNC13(ip, 1);	/* Don't want iput() deleting it */
		FUNC6(ip);
		/* release the page */
		FUNC12(mp);
		return (NULL);

	}

	ip->i_mapping->a_ops = &jfs_metapage_aops;
	FUNC9(ip->i_mapping, GFP_NOFS);

	/* Allocations to metadata inodes should not affect quotas */
	ip->i_flags |= S_NOQUOTA;

	if ((inum == FILESYSTEM_I) && (FUNC1(ip)->ipimap == sbi->ipaimap)) {
		sbi->gengen = FUNC8(dp->di_gengen);
		sbi->inostamp = FUNC8(dp->di_inostamp);
	}

	/* release the page */
	FUNC12(mp);

	FUNC5(ip);

	return (ip);
}
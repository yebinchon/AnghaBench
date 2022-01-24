#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct ufs_super_block_first {void* fs_optim; } ;
struct TYPE_4__ {scalar_t__ cs_nffree; } ;
struct ufs_sb_private_info {unsigned int s_fpb; scalar_t__ s_root_blocks; scalar_t__ s_size; scalar_t__ s_space_to_time; scalar_t__ s_time_to_space; scalar_t__ s_sbbase; TYPE_1__ cs_total; } ;
struct super_block {int dummy; } ;
struct page {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ino; struct super_block* i_sb; } ;
struct TYPE_6__ {scalar_t__ i_lastfrag; int /*<<< orphan*/  meta_lock; } ;
struct TYPE_5__ {int /*<<< orphan*/  s_lock; struct ufs_sb_private_info* s_uspi; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_RESOURCE ; 
 int ENOSPC ; 
 scalar_t__ INVBLOCK ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 TYPE_3__* FUNC1 (struct inode*) ; 
 scalar_t__ UFS_OPTSPACE ; 
 scalar_t__ UFS_OPTTIME ; 
 TYPE_2__* FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (struct super_block*,scalar_t__) ; 
 scalar_t__ FUNC5 (struct super_block*,void*) ; 
 void* FUNC6 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct ufs_super_block_first* FUNC11 (struct ufs_sb_private_info*) ; 
 scalar_t__ FUNC12 (struct inode*,scalar_t__,unsigned int,unsigned int) ; 
 scalar_t__ FUNC13 (struct inode*,unsigned int,scalar_t__,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*,scalar_t__,unsigned int,scalar_t__,scalar_t__,struct page*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*,scalar_t__,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct super_block*,void*,scalar_t__) ; 
 scalar_t__ FUNC17 (struct super_block*,void*) ; 
 unsigned int FUNC18 (struct ufs_sb_private_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (struct super_block*,char*,char*,unsigned long long,unsigned long long) ; 
 unsigned int FUNC20 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (struct inode*,scalar_t__,unsigned int) ; 
 scalar_t__ FUNC22 (struct ufs_sb_private_info*) ; 
 unsigned int FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct super_block*,char*,char*,unsigned long long,unsigned int) ; 
 scalar_t__ FUNC25 (int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 

u64 FUNC28(struct inode *inode, void *p, u64 fragment,
			   u64 goal, unsigned count, int *err,
			   struct page *locked_page)
{
	struct super_block * sb;
	struct ufs_sb_private_info * uspi;
	struct ufs_super_block_first * usb1;
	unsigned cgno, oldcount, newcount;
	u64 tmp, request, result;
	
	FUNC0("ENTER, ino %lu, fragment %llu, goal %llu, count %u\n",
	     inode->i_ino, (unsigned long long)fragment,
	     (unsigned long long)goal, count);
	
	sb = inode->i_sb;
	uspi = FUNC2(sb)->s_uspi;
	usb1 = FUNC11(uspi);
	*err = -ENOSPC;

	FUNC7(&FUNC2(sb)->s_lock);
	tmp = FUNC17(sb, p);

	if (count + FUNC20(fragment) > uspi->s_fpb) {
		FUNC24(sb, "ufs_new_fragments", "internal warning"
			    " fragment %llu, count %u",
			    (unsigned long long)fragment, count);
		count = uspi->s_fpb - FUNC20(fragment); 
	}
	oldcount = FUNC20 (fragment);
	newcount = oldcount + count;

	/*
	 * Somebody else has just allocated our fragments
	 */
	if (oldcount) {
		if (!tmp) {
			FUNC19(sb, "ufs_new_fragments", "internal error, "
				  "fragment %llu, tmp %llu\n",
				  (unsigned long long)fragment,
				  (unsigned long long)tmp);
			FUNC8(&FUNC2(sb)->s_lock);
			return INVBLOCK;
		}
		if (fragment < FUNC1(inode)->i_lastfrag) {
			FUNC0("EXIT (ALREADY ALLOCATED)\n");
			FUNC8(&FUNC2(sb)->s_lock);
			return 0;
		}
	}
	else {
		if (tmp) {
			FUNC0("EXIT (ALREADY ALLOCATED)\n");
			FUNC8(&FUNC2(sb)->s_lock);
			return 0;
		}
	}

	/*
	 * There is not enough space for user on the device
	 */
	if (FUNC25(FUNC22(uspi) <= uspi->s_root_blocks)) {
		if (!FUNC3(CAP_SYS_RESOURCE)) {
			FUNC8(&FUNC2(sb)->s_lock);
			FUNC0("EXIT (FAILED)\n");
			return 0;
		}
	}

	if (goal >= uspi->s_size) 
		goal = 0;
	if (goal == 0) 
		cgno = FUNC23 (inode->i_ino);
	else
		cgno = FUNC18(uspi, goal);
	 
	/*
	 * allocate new fragment
	 */
	if (oldcount == 0) {
		result = FUNC13 (inode, cgno, goal, count, err);
		if (result) {
			FUNC15(inode, result + oldcount,
					newcount - oldcount, locked_page != NULL);
			*err = 0;
			FUNC26(&FUNC1(inode)->meta_lock);
			FUNC16(sb, p, result);
			FUNC1(inode)->i_lastfrag =
				FUNC6(FUNC1(inode)->i_lastfrag, fragment + count);
			FUNC27(&FUNC1(inode)->meta_lock);
		}
		FUNC8(&FUNC2(sb)->s_lock);
		FUNC0("EXIT, result %llu\n", (unsigned long long)result);
		return result;
	}

	/*
	 * resize block
	 */
	result = FUNC12(inode, tmp, oldcount, newcount);
	if (result) {
		*err = 0;
		FUNC9(&FUNC1(inode)->meta_lock);
		FUNC1(inode)->i_lastfrag = FUNC6(FUNC1(inode)->i_lastfrag,
						fragment + count);
		FUNC10(&FUNC1(inode)->meta_lock);
		FUNC15(inode, result + oldcount, newcount - oldcount,
				locked_page != NULL);
		FUNC8(&FUNC2(sb)->s_lock);
		FUNC0("EXIT, result %llu\n", (unsigned long long)result);
		return result;
	}

	/*
	 * allocate new block and move data
	 */
	if (FUNC5(sb, usb1->fs_optim) == UFS_OPTSPACE) {
		request = newcount;
		if (uspi->cs_total.cs_nffree < uspi->s_space_to_time)
			usb1->fs_optim = FUNC4(sb, UFS_OPTTIME);
	} else {
		request = uspi->s_fpb;
		if (uspi->cs_total.cs_nffree > uspi->s_time_to_space)
			usb1->fs_optim = FUNC4(sb, UFS_OPTSPACE);
	}
	result = FUNC13 (inode, cgno, goal, request, err);
	if (result) {
		FUNC15(inode, result + oldcount, newcount - oldcount,
				locked_page != NULL);
		FUNC8(&FUNC2(sb)->s_lock);
		FUNC14(inode, fragment - oldcount, oldcount,
				   uspi->s_sbbase + tmp,
				   uspi->s_sbbase + result, locked_page);
		*err = 0;
		FUNC26(&FUNC1(inode)->meta_lock);
		FUNC16(sb, p, result);
		FUNC1(inode)->i_lastfrag = FUNC6(FUNC1(inode)->i_lastfrag,
						fragment + count);
		FUNC27(&FUNC1(inode)->meta_lock);
		if (newcount < request)
			FUNC21 (inode, result + newcount, request - newcount);
		FUNC21 (inode, tmp, oldcount);
		FUNC0("EXIT, result %llu\n", (unsigned long long)result);
		return result;
	}

	FUNC8(&FUNC2(sb)->s_lock);
	FUNC0("EXIT (FAILED)\n");
	return 0;
}
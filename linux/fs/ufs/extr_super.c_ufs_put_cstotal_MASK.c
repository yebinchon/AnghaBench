#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {void* cs_nffree; void* cs_nifree; } ;
struct TYPE_11__ {TYPE_3__ fs_u2; } ;
struct ufs_super_block_third {TYPE_4__ fs_un1; } ;
struct TYPE_8__ {scalar_t__ fs_maxbsize; void* cs_nbfree; void* cs_ndir; } ;
struct TYPE_9__ {TYPE_1__ fs_u2; } ;
struct ufs_super_block_second {TYPE_2__ fs_un; } ;
struct TYPE_12__ {void* cs_nffree; void* cs_nifree; void* cs_nbfree; void* cs_ndir; } ;
struct ufs_super_block_first {scalar_t__ fs_bsize; TYPE_5__ fs_cstotal; } ;
struct TYPE_13__ {int /*<<< orphan*/  cs_nffree; int /*<<< orphan*/  cs_nifree; int /*<<< orphan*/  cs_nbfree; int /*<<< orphan*/  cs_ndir; } ;
struct ufs_sb_private_info {TYPE_6__ cs_total; } ;
struct super_block {int dummy; } ;
struct TYPE_14__ {unsigned int s_mount_opt; struct ufs_sb_private_info* s_uspi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 unsigned int UFS_MOUNT_UFSTYPE ; 
 unsigned int UFS_MOUNT_UFSTYPE_44BSD ; 
 unsigned int UFS_MOUNT_UFSTYPE_UFS2 ; 
 TYPE_7__* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct ufs_sb_private_info*) ; 
 void* FUNC3 (struct super_block*,int /*<<< orphan*/ ) ; 
 void* FUNC4 (struct super_block*,int /*<<< orphan*/ ) ; 
 struct ufs_super_block_first* FUNC5 (struct ufs_sb_private_info*) ; 
 struct ufs_super_block_second* FUNC6 (struct ufs_sb_private_info*) ; 
 struct ufs_super_block_third* FUNC7 (struct ufs_sb_private_info*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct super_block*,struct ufs_super_block_first*,struct ufs_super_block_second*,struct ufs_super_block_third*) ; 

__attribute__((used)) static void FUNC10(struct super_block *sb)
{
	unsigned mtype = FUNC1(sb)->s_mount_opt & UFS_MOUNT_UFSTYPE;
	struct ufs_sb_private_info *uspi = FUNC1(sb)->s_uspi;
	struct ufs_super_block_first *usb1;
	struct ufs_super_block_second *usb2;
	struct ufs_super_block_third *usb3;

	FUNC0("ENTER\n");
	usb1 = FUNC5(uspi);
	usb2 = FUNC6(uspi);
	usb3 = FUNC7(uspi);

	if (mtype == UFS_MOUNT_UFSTYPE_UFS2) {
		/*we have statistic in different place, then usual*/
		usb2->fs_un.fs_u2.cs_ndir =
			FUNC4(sb, uspi->cs_total.cs_ndir);
		usb2->fs_un.fs_u2.cs_nbfree =
			FUNC4(sb, uspi->cs_total.cs_nbfree);
		usb3->fs_un1.fs_u2.cs_nifree =
			FUNC4(sb, uspi->cs_total.cs_nifree);
		usb3->fs_un1.fs_u2.cs_nffree =
			FUNC4(sb, uspi->cs_total.cs_nffree);
		goto out;
	}

	if (mtype == UFS_MOUNT_UFSTYPE_44BSD &&
	     (usb2->fs_un.fs_u2.fs_maxbsize == usb1->fs_bsize)) {
		/* store stats in both old and new places */
		usb2->fs_un.fs_u2.cs_ndir =
			FUNC4(sb, uspi->cs_total.cs_ndir);
		usb2->fs_un.fs_u2.cs_nbfree =
			FUNC4(sb, uspi->cs_total.cs_nbfree);
		usb3->fs_un1.fs_u2.cs_nifree =
			FUNC4(sb, uspi->cs_total.cs_nifree);
		usb3->fs_un1.fs_u2.cs_nffree =
			FUNC4(sb, uspi->cs_total.cs_nffree);
	}
	usb1->fs_cstotal.cs_ndir = FUNC3(sb, uspi->cs_total.cs_ndir);
	usb1->fs_cstotal.cs_nbfree = FUNC3(sb, uspi->cs_total.cs_nbfree);
	usb1->fs_cstotal.cs_nifree = FUNC3(sb, uspi->cs_total.cs_nifree);
	usb1->fs_cstotal.cs_nffree = FUNC3(sb, uspi->cs_total.cs_nffree);
out:
	FUNC8(FUNC2(uspi));
	FUNC9(sb, usb1, usb2, usb3);
	FUNC0("EXIT\n");
}
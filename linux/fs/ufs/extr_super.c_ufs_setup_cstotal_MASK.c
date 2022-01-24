#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  cs_nffree; int /*<<< orphan*/  cs_nifree; } ;
struct TYPE_10__ {TYPE_3__ fs_u2; } ;
struct ufs_super_block_third {TYPE_4__ fs_un1; } ;
struct TYPE_7__ {scalar_t__ fs_maxbsize; int /*<<< orphan*/  cs_nbfree; int /*<<< orphan*/  cs_ndir; } ;
struct TYPE_8__ {TYPE_1__ fs_u2; } ;
struct ufs_super_block_second {TYPE_2__ fs_un; } ;
struct TYPE_12__ {int /*<<< orphan*/  cs_nffree; int /*<<< orphan*/  cs_nifree; int /*<<< orphan*/  cs_nbfree; int /*<<< orphan*/  cs_ndir; } ;
struct ufs_super_block_first {scalar_t__ fs_bsize; TYPE_6__ fs_cstotal; } ;
struct TYPE_11__ {void* cs_nffree; void* cs_nifree; void* cs_nbfree; void* cs_ndir; } ;
struct ufs_sb_private_info {TYPE_5__ cs_total; } ;
struct ufs_sb_info {unsigned int s_mount_opt; struct ufs_sb_private_info* s_uspi; } ;
struct super_block {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 unsigned int UFS_MOUNT_UFSTYPE ; 
 unsigned int UFS_MOUNT_UFSTYPE_44BSD ; 
 unsigned int UFS_MOUNT_UFSTYPE_UFS2 ; 
 struct ufs_sb_info* FUNC1 (struct super_block*) ; 
 void* FUNC2 (struct super_block*,int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct super_block*,int /*<<< orphan*/ ) ; 
 struct ufs_super_block_first* FUNC4 (struct ufs_sb_private_info*) ; 
 struct ufs_super_block_second* FUNC5 (struct ufs_sb_private_info*) ; 
 struct ufs_super_block_third* FUNC6 (struct ufs_sb_private_info*) ; 

__attribute__((used)) static void FUNC7(struct super_block *sb)
{
	struct ufs_sb_info *sbi = FUNC1(sb);
	struct ufs_sb_private_info *uspi = sbi->s_uspi;
	struct ufs_super_block_first *usb1;
	struct ufs_super_block_second *usb2;
	struct ufs_super_block_third *usb3;
	unsigned mtype = sbi->s_mount_opt & UFS_MOUNT_UFSTYPE;

	FUNC0("ENTER, mtype=%u\n", mtype);
	usb1 = FUNC4(uspi);
	usb2 = FUNC5(uspi);
	usb3 = FUNC6(uspi);

	if ((mtype == UFS_MOUNT_UFSTYPE_44BSD &&
	     (usb2->fs_un.fs_u2.fs_maxbsize == usb1->fs_bsize)) ||
	    mtype == UFS_MOUNT_UFSTYPE_UFS2) {
		/*we have statistic in different place, then usual*/
		uspi->cs_total.cs_ndir = FUNC3(sb, usb2->fs_un.fs_u2.cs_ndir);
		uspi->cs_total.cs_nbfree = FUNC3(sb, usb2->fs_un.fs_u2.cs_nbfree);
		uspi->cs_total.cs_nifree = FUNC3(sb, usb3->fs_un1.fs_u2.cs_nifree);
		uspi->cs_total.cs_nffree = FUNC3(sb, usb3->fs_un1.fs_u2.cs_nffree);
	} else {
		uspi->cs_total.cs_ndir = FUNC2(sb, usb1->fs_cstotal.cs_ndir);
		uspi->cs_total.cs_nbfree = FUNC2(sb, usb1->fs_cstotal.cs_nbfree);
		uspi->cs_total.cs_nifree = FUNC2(sb, usb1->fs_cstotal.cs_nifree);
		uspi->cs_total.cs_nffree = FUNC2(sb, usb1->fs_cstotal.cs_nffree);
	}
	FUNC0("EXIT\n");
}
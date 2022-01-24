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
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct jfs_sb_info {scalar_t__ state; TYPE_3__* ipbmap; TYPE_1__* ipimap; } ;
struct TYPE_6__ {int /*<<< orphan*/  i_mapping; } ;
struct TYPE_5__ {int /*<<< orphan*/  i_mapping; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FM_CLEAN ; 
 int /*<<< orphan*/  FM_MOUNT ; 
 struct jfs_sb_info* FUNC0 (struct super_block*) ; 
 scalar_t__ FUNC1 (struct super_block*) ; 
 int FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*) ; 
 int FUNC8 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC9 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct super_block*,int /*<<< orphan*/ ) ; 

int FUNC12(struct super_block *sb, int remount)
{
	struct jfs_sb_info *sbi = FUNC0(sb);
	int rc;

	/*
	 * If we are re-mounting a previously read-only volume, we want to
	 * re-read the inode and block maps, since fsck.jfs may have updated
	 * them.
	 */
	if (remount) {
		if (FUNC1(sb) || (sbi->state != FM_CLEAN))
			return -EINVAL;

		FUNC10(sbi->ipimap->i_mapping, 0);
		FUNC10(sbi->ipbmap->i_mapping, 0);
		FUNC5(sbi->ipimap, 1);
		if ((rc = FUNC4(sbi->ipimap))) {
			FUNC6("jfs_mount_rw: diMount failed!");
			return rc;
		}

		FUNC3(sbi->ipbmap, 1);
		if ((rc = FUNC2(sbi->ipbmap))) {
			FUNC6("jfs_mount_rw: dbMount failed!");
			return rc;
		}
	}

	/*
	 * open/initialize log
	 */
	if ((rc = FUNC8(sb)))
		return rc;

	/*
	 * update file system superblock;
	 */
	if ((rc = FUNC11(sb, FM_MOUNT))) {
		FUNC6("jfs_mount: updateSuper failed w/rc = %d", rc);
		FUNC7(sb);
		return rc;
	}

	/*
	 * write MOUNT log record of the file system
	 */
	FUNC9(sb);

	return rc;
}
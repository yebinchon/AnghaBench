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
typedef  int /*<<< orphan*/  xfs_mount_t ;
typedef  scalar_t__ xfs_ino_t ;

/* Variables and functions */
 int EFSCORRUPTED ; 
 int /*<<< orphan*/  XFS_ERRLEVEL_LOW ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  XFS_ERRTAG_DIR_INO_VALIDATE ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,unsigned long long) ; 

int
FUNC5(
	xfs_mount_t	*mp,
	xfs_ino_t	ino)
{
	bool		ino_ok = FUNC3(mp, ino);

	if (FUNC2(FUNC1(!ino_ok, mp, XFS_ERRTAG_DIR_INO_VALIDATE))) {
		FUNC4(mp, "Invalid inode number 0x%Lx",
				(unsigned long long) ino);
		FUNC0("xfs_dir_ino_validate", XFS_ERRLEVEL_LOW, mp);
		return -EFSCORRUPTED;
	}
	return 0;
}
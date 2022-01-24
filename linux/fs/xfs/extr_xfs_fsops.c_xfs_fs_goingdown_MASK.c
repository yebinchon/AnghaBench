#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* m_super; } ;
typedef  TYPE_2__ xfs_mount_t ;
typedef  int uint32_t ;
struct super_block {int /*<<< orphan*/  s_bdev; } ;
struct TYPE_5__ {int /*<<< orphan*/  s_bdev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct super_block*) ; 
 int SHUTDOWN_FORCE_UMOUNT ; 
 int SHUTDOWN_LOG_IO_ERROR ; 
#define  XFS_FSOP_GOING_FLAGS_DEFAULT 130 
#define  XFS_FSOP_GOING_FLAGS_LOGFLUSH 129 
#define  XFS_FSOP_GOING_FLAGS_NOLOGFLUSH 128 
 struct super_block* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 

int
FUNC4(
	xfs_mount_t	*mp,
	uint32_t	inflags)
{
	switch (inflags) {
	case XFS_FSOP_GOING_FLAGS_DEFAULT: {
		struct super_block *sb = FUNC1(mp->m_super->s_bdev);

		if (sb && !FUNC0(sb)) {
			FUNC3(mp, SHUTDOWN_FORCE_UMOUNT);
			FUNC2(sb->s_bdev, sb);
		}

		break;
	}
	case XFS_FSOP_GOING_FLAGS_LOGFLUSH:
		FUNC3(mp, SHUTDOWN_FORCE_UMOUNT);
		break;
	case XFS_FSOP_GOING_FLAGS_NOLOGFLUSH:
		FUNC3(mp,
				SHUTDOWN_FORCE_UMOUNT | SHUTDOWN_LOG_IO_ERROR);
		break;
	default:
		return -EINVAL;
	}

	return 0;
}
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
typedef  int xfs_dqid_t ;
typedef  int /*<<< orphan*/  xfs_dqblk_t ;
typedef  int /*<<< orphan*/  uint ;
struct TYPE_4__ {int /*<<< orphan*/  sb_meta_uuid; } ;
struct xfs_mount {TYPE_2__ m_sb; } ;
struct TYPE_3__ {int /*<<< orphan*/  d_id; int /*<<< orphan*/  d_flags; int /*<<< orphan*/  d_version; int /*<<< orphan*/  d_magic; } ;
struct xfs_dqblk {int /*<<< orphan*/  dd_uuid; TYPE_1__ dd_diskdq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  XFS_DQUOT_CRC_OFF ; 
 int /*<<< orphan*/  XFS_DQUOT_MAGIC ; 
 int /*<<< orphan*/  XFS_DQUOT_VERSION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_dqblk*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int /*<<< orphan*/ ) ; 

void
FUNC7(
	struct xfs_mount	*mp,
	struct xfs_dqblk	*dqb,
	xfs_dqid_t		id,
	uint			type)
{
	/*
	 * Typically, a repair is only requested by quotacheck.
	 */
	FUNC0(id != -1);
	FUNC3(dqb, 0, sizeof(xfs_dqblk_t));

	dqb->dd_diskdq.d_magic = FUNC1(XFS_DQUOT_MAGIC);
	dqb->dd_diskdq.d_version = XFS_DQUOT_VERSION;
	dqb->dd_diskdq.d_flags = type;
	dqb->dd_diskdq.d_id = FUNC2(id);

	if (FUNC5(&mp->m_sb)) {
		FUNC4(&dqb->dd_uuid, &mp->m_sb.sb_meta_uuid);
		FUNC6((char *)dqb, sizeof(struct xfs_dqblk),
				 XFS_DQUOT_CRC_OFF);
	}
}
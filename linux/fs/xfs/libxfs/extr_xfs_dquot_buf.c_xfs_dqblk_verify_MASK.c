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
typedef  int /*<<< orphan*/  xfs_failaddr_t ;
typedef  int /*<<< orphan*/  xfs_dqid_t ;
typedef  int /*<<< orphan*/  uint ;
struct TYPE_2__ {int /*<<< orphan*/  sb_meta_uuid; } ;
struct xfs_mount {TYPE_1__ m_sb; } ;
struct xfs_dqblk {int /*<<< orphan*/  dd_diskdq; int /*<<< orphan*/  dd_uuid; } ;

/* Variables and functions */
 int /*<<< orphan*/  __this_address ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_mount*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 

xfs_failaddr_t
FUNC3(
	struct xfs_mount	*mp,
	struct xfs_dqblk	*dqb,
	xfs_dqid_t	 	id,
	uint		 	type)	/* used only during quotacheck */
{
	if (FUNC2(&mp->m_sb) &&
	    !FUNC0(&dqb->dd_uuid, &mp->m_sb.sb_meta_uuid))
		return __this_address;

	return FUNC1(mp, &dqb->dd_diskdq, id, type);
}
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
typedef  int /*<<< orphan*/  xfs_fsblock_t ;
typedef  scalar_t__ xfs_agnumber_t ;
struct TYPE_2__ {scalar_t__ sb_agcount; } ;
struct xfs_mount {TYPE_1__ m_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct xfs_mount*,scalar_t__,int /*<<< orphan*/ ) ; 

bool
FUNC3(
	struct xfs_mount	*mp,
	xfs_fsblock_t		fsbno)
{
	xfs_agnumber_t		agno = FUNC1(mp, fsbno);

	if (agno >= mp->m_sb.sb_agcount)
		return false;
	return FUNC2(mp, agno, FUNC0(mp, fsbno));
}
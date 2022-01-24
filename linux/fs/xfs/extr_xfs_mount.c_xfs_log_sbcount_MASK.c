#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  m_sb; } ;
typedef  TYPE_1__ xfs_mount_t ;

/* Variables and functions */
 int /*<<< orphan*/  SB_FREEZE_COMPLETE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*,int) ; 

int
FUNC3(xfs_mount_t *mp)
{
	/* allow this to proceed during the freeze sequence... */
	if (!FUNC0(mp, SB_FREEZE_COMPLETE))
		return 0;

	/*
	 * we don't need to do this if we are updating the superblock
	 * counters on every modification.
	 */
	if (!FUNC1(&mp->m_sb))
		return 0;

	return FUNC2(mp, true);
}
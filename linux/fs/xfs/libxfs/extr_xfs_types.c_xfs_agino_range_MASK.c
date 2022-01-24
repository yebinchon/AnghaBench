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
typedef  int /*<<< orphan*/  xfs_agnumber_t ;
typedef  scalar_t__ xfs_agino_t ;
typedef  int /*<<< orphan*/  xfs_agblock_t ;
struct xfs_mount {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  cluster_align; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct xfs_mount*) ; 
 scalar_t__ FUNC1 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_mount*,int /*<<< orphan*/ ) ; 

void
FUNC6(
	struct xfs_mount	*mp,
	xfs_agnumber_t		agno,
	xfs_agino_t		*first,
	xfs_agino_t		*last)
{
	xfs_agblock_t		bno;
	xfs_agblock_t		eoag;

	eoag = FUNC5(mp, agno);

	/*
	 * Calculate the first inode, which will be in the first
	 * cluster-aligned block after the AGFL.
	 */
	bno = FUNC4(FUNC2(mp) + 1, FUNC0(mp)->cluster_align);
	*first = FUNC1(mp, bno);

	/*
	 * Calculate the last inode, which will be at the end of the
	 * last (aligned) cluster that can be allocated in the AG.
	 */
	bno = FUNC3(eoag, FUNC0(mp)->cluster_align);
	*last = FUNC1(mp, bno) - 1;
}
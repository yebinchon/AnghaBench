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
typedef  int /*<<< orphan*/  xfs_fsblock_t ;
typedef  int /*<<< orphan*/  xfs_extlen_t ;
struct xfs_trans {struct xfs_mount* t_mountp; } ;
struct xfs_mount {int /*<<< orphan*/  m_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XFS_REFCOUNT_FREE_COW ; 
 int /*<<< orphan*/  XFS_RMAP_OWN_COW ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(
	struct xfs_trans		*tp,
	xfs_fsblock_t			fsb,
	xfs_extlen_t			len)
{
	struct xfs_mount		*mp = tp->t_mountp;

	if (!FUNC4(&mp->m_sb))
		return;

	/* Remove rmap entry */
	FUNC3(tp, FUNC1(mp, fsb),
			FUNC0(mp, fsb), len, XFS_RMAP_OWN_COW);
	FUNC2(tp, XFS_REFCOUNT_FREE_COW, fsb, len);
}
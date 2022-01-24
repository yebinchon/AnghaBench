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
struct xfs_trans {TYPE_1__* t_mountp; } ;
struct xfs_bmbt_irec {int /*<<< orphan*/  br_blockcount; int /*<<< orphan*/  br_startblock; } ;
struct TYPE_2__ {int /*<<< orphan*/  m_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  XFS_REFCOUNT_INCREASE ; 
 int /*<<< orphan*/  FUNC0 (struct xfs_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(
	struct xfs_trans		*tp,
	struct xfs_bmbt_irec		*PREV)
{
	if (!FUNC1(&tp->t_mountp->m_sb))
		return;

	FUNC0(tp, XFS_REFCOUNT_INCREASE, PREV->br_startblock,
			PREV->br_blockcount);
}
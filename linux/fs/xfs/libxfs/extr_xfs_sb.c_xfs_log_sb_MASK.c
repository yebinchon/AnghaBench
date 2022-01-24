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
struct xfs_trans {struct xfs_mount* t_mountp; } ;
struct TYPE_2__ {void* sb_fdblocks; void* sb_ifree; void* sb_icount; } ;
struct xfs_mount {TYPE_1__ m_sb; int /*<<< orphan*/  m_fdblocks; int /*<<< orphan*/  m_ifree; int /*<<< orphan*/  m_icount; } ;
struct xfs_dsb {int dummy; } ;
struct xfs_buf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  XFS_BLFT_SB_BUF ; 
 int /*<<< orphan*/  FUNC0 (struct xfs_buf*) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_trans*,struct xfs_buf*,int /*<<< orphan*/ ) ; 
 struct xfs_buf* FUNC4 (struct xfs_trans*,struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_trans*,struct xfs_buf*,int /*<<< orphan*/ ,int) ; 

void
FUNC6(
	struct xfs_trans	*tp)
{
	struct xfs_mount	*mp = tp->t_mountp;
	struct xfs_buf		*bp = FUNC4(tp, mp);

	mp->m_sb.sb_icount = FUNC1(&mp->m_icount);
	mp->m_sb.sb_ifree = FUNC1(&mp->m_ifree);
	mp->m_sb.sb_fdblocks = FUNC1(&mp->m_fdblocks);

	FUNC2(FUNC0(bp), &mp->m_sb);
	FUNC3(tp, bp, XFS_BLFT_SB_BUF);
	FUNC5(tp, bp, 0, sizeof(struct xfs_dsb) - 1);
}
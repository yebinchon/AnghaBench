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
typedef  scalar_t__ xfs_extlen_t ;
typedef  int /*<<< orphan*/  xfs_agnumber_t ;
struct xfs_trans {int dummy; } ;
struct xfs_mount {int /*<<< orphan*/  m_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  XFS_BTNUM_FINO ; 
 int FUNC0 (struct xfs_mount*,struct xfs_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC1 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int
FUNC3(
	struct xfs_mount	*mp,
	struct xfs_trans	*tp,
	xfs_agnumber_t		agno,
	xfs_extlen_t		*ask,
	xfs_extlen_t		*used)
{
	xfs_extlen_t		tree_len = 0;
	int			error;

	if (!FUNC2(&mp->m_sb))
		return 0;

	error = FUNC0(mp, tp, agno, XFS_BTNUM_FINO, &tree_len);
	if (error)
		return error;

	*ask += FUNC1(mp, agno);
	*used += tree_len;
	return 0;
}
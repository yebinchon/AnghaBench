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
typedef  int /*<<< orphan*/  xfs_agnumber_t ;
struct xfs_scrub {int /*<<< orphan*/  tp; struct xfs_mount* mp; } ;
struct xfs_mount {int dummy; } ;
struct xfs_buf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  XFS_SCRUB_TYPE_AGF ; 
 int /*<<< orphan*/  XFS_SCRUB_TYPE_AGFL ; 
 int /*<<< orphan*/  XFS_SCRUB_TYPE_AGI ; 
 scalar_t__ FUNC0 (struct xfs_scrub*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct xfs_mount*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xfs_buf**) ; 
 int FUNC2 (struct xfs_mount*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xfs_buf**) ; 
 int FUNC3 (struct xfs_mount*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xfs_buf**) ; 

int
FUNC4(
	struct xfs_scrub	*sc,
	xfs_agnumber_t		agno,
	struct xfs_buf		**agi,
	struct xfs_buf		**agf,
	struct xfs_buf		**agfl)
{
	struct xfs_mount	*mp = sc->mp;
	int			error;

	error = FUNC3(mp, sc->tp, agno, agi);
	if (error && FUNC0(sc, XFS_SCRUB_TYPE_AGI))
		goto out;

	error = FUNC1(mp, sc->tp, agno, 0, agf);
	if (error && FUNC0(sc, XFS_SCRUB_TYPE_AGF))
		goto out;

	error = FUNC2(mp, sc->tp, agno, agfl);
	if (error && FUNC0(sc, XFS_SCRUB_TYPE_AGFL))
		goto out;
	error = 0;
out:
	return error;
}
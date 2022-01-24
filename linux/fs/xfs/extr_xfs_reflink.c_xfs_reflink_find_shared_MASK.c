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
typedef  int /*<<< orphan*/  xfs_extlen_t ;
typedef  int /*<<< orphan*/  xfs_agnumber_t ;
typedef  int /*<<< orphan*/  xfs_agblock_t ;
struct xfs_trans {int dummy; } ;
struct xfs_mount {int dummy; } ;
struct xfs_buf {int dummy; } ;
struct xfs_btree_cur {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct xfs_mount*,struct xfs_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xfs_buf**) ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_btree_cur*,int) ; 
 int FUNC2 (struct xfs_btree_cur*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct xfs_btree_cur* FUNC3 (struct xfs_mount*,struct xfs_trans*,struct xfs_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_trans*,struct xfs_buf*) ; 

int
FUNC5(
	struct xfs_mount	*mp,
	struct xfs_trans	*tp,
	xfs_agnumber_t		agno,
	xfs_agblock_t		agbno,
	xfs_extlen_t		aglen,
	xfs_agblock_t		*fbno,
	xfs_extlen_t		*flen,
	bool			find_end_of_shared)
{
	struct xfs_buf		*agbp;
	struct xfs_btree_cur	*cur;
	int			error;

	error = FUNC0(mp, tp, agno, 0, &agbp);
	if (error)
		return error;
	if (!agbp)
		return -ENOMEM;

	cur = FUNC3(mp, tp, agbp, agno);

	error = FUNC2(cur, agbno, aglen, fbno, flen,
			find_end_of_shared);

	FUNC1(cur, error);

	FUNC4(tp, agbp);
	return error;
}
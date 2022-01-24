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
typedef  int /*<<< orphan*/  xfs_dqid_t ;
typedef  int /*<<< orphan*/  uint ;
struct xfs_quotainfo {int dummy; } ;
struct xfs_mount {struct xfs_quotainfo* m_quotainfo; } ;
struct xfs_dquot {int dummy; } ;
struct radix_tree_root {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_dquot*) ; 
 struct radix_tree_root* FUNC2 (struct xfs_quotainfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_dquot*) ; 
 int FUNC4 (struct xfs_mount*,struct xfs_quotainfo*,struct radix_tree_root*,int /*<<< orphan*/ ,struct xfs_dquot*) ; 
 struct xfs_dquot* FUNC5 (struct xfs_mount*,struct xfs_quotainfo*,struct radix_tree_root*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct xfs_mount*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct xfs_dquot**) ; 
 int /*<<< orphan*/  xs_qm_dquot_dups ; 

int
FUNC8(
	struct xfs_mount	*mp,
	xfs_dqid_t		id,
	uint			type,
	bool			can_alloc,
	struct xfs_dquot	**O_dqpp)
{
	struct xfs_quotainfo	*qi = mp->m_quotainfo;
	struct radix_tree_root	*tree = FUNC2(qi, type);
	struct xfs_dquot	*dqp;
	int			error;

	error = FUNC6(mp, type);
	if (error)
		return error;

restart:
	dqp = FUNC5(mp, qi, tree, id);
	if (dqp) {
		*O_dqpp = dqp;
		return 0;
	}

	error = FUNC7(mp, id, type, can_alloc, &dqp);
	if (error)
		return error;

	error = FUNC4(mp, qi, tree, id, dqp);
	if (error) {
		/*
		 * Duplicate found. Just throw away the new dquot and start
		 * over.
		 */
		FUNC3(dqp);
		FUNC0(mp, xs_qm_dquot_dups);
		goto restart;
	}

	FUNC1(dqp);
	*O_dqpp = dqp;
	return 0;
}
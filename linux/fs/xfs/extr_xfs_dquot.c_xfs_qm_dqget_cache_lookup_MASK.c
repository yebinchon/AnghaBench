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
struct xfs_quotainfo {int /*<<< orphan*/  qi_tree_lock; } ;
struct xfs_mount {int dummy; } ;
struct xfs_dquot {int dq_flags; int /*<<< orphan*/  q_nrefs; } ;
struct radix_tree_root {int dummy; } ;

/* Variables and functions */
 int XFS_DQ_FREEING ; 
 int /*<<< orphan*/  FUNC0 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct xfs_dquot* FUNC4 (struct radix_tree_root*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_dquot*) ; 
 int /*<<< orphan*/  FUNC6 (struct xfs_dquot*) ; 
 int /*<<< orphan*/  FUNC7 (struct xfs_dquot*) ; 
 int /*<<< orphan*/  FUNC8 (struct xfs_dquot*) ; 
 int /*<<< orphan*/  xs_qm_dqcachehits ; 
 int /*<<< orphan*/  xs_qm_dqcachemisses ; 

__attribute__((used)) static struct xfs_dquot *
FUNC9(
	struct xfs_mount	*mp,
	struct xfs_quotainfo	*qi,
	struct radix_tree_root	*tree,
	xfs_dqid_t		id)
{
	struct xfs_dquot	*dqp;

restart:
	FUNC2(&qi->qi_tree_lock);
	dqp = FUNC4(tree, id);
	if (!dqp) {
		FUNC3(&qi->qi_tree_lock);
		FUNC0(mp, xs_qm_dqcachemisses);
		return NULL;
	}

	FUNC7(dqp);
	if (dqp->dq_flags & XFS_DQ_FREEING) {
		FUNC8(dqp);
		FUNC3(&qi->qi_tree_lock);
		FUNC5(dqp);
		FUNC1(1);
		goto restart;
	}

	dqp->q_nrefs++;
	FUNC3(&qi->qi_tree_lock);

	FUNC6(dqp);
	FUNC0(mp, xs_qm_dqcachehits);
	return dqp;
}
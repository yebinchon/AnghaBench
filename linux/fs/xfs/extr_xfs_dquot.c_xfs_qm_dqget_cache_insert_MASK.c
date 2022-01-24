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
struct xfs_quotainfo {int /*<<< orphan*/  qi_tree_lock; int /*<<< orphan*/  qi_dquots; } ;
struct xfs_mount {int dummy; } ;
struct xfs_dquot {int q_nrefs; } ;
struct radix_tree_root {int dummy; } ;

/* Variables and functions */
 int EEXIST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct radix_tree_root*,int /*<<< orphan*/ ,struct xfs_dquot*) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_dquot*) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct xfs_dquot*) ; 

__attribute__((used)) static int
FUNC7(
	struct xfs_mount	*mp,
	struct xfs_quotainfo	*qi,
	struct radix_tree_root	*tree,
	xfs_dqid_t		id,
	struct xfs_dquot	*dqp)
{
	int			error;

	FUNC1(&qi->qi_tree_lock);
	error = FUNC3(tree, id, dqp);
	if (FUNC5(error)) {
		/* Duplicate found!  Caller must try again. */
		FUNC0(error != -EEXIST);
		FUNC2(&qi->qi_tree_lock);
		FUNC4(dqp);
		return error;
	}

	/* Return a locked dquot to the caller, with a reference taken. */
	FUNC6(dqp);
	dqp->q_nrefs = 1;

	qi->qi_dquots++;
	FUNC2(&qi->qi_tree_lock);

	return 0;
}
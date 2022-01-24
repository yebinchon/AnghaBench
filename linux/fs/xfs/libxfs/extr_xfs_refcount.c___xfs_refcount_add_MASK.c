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
struct xfs_trans {int /*<<< orphan*/  t_mountp; } ;
struct xfs_refcount_intent {int ri_type; int /*<<< orphan*/  ri_list; int /*<<< orphan*/  ri_blockcount; int /*<<< orphan*/  ri_startblock; } ;
typedef  enum xfs_refcount_intent_type { ____Placeholder_xfs_refcount_intent_type } xfs_refcount_intent_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KM_NOFS ; 
 int /*<<< orphan*/  XFS_DEFER_OPS_TYPE_REFCOUNT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct xfs_refcount_intent* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(
	struct xfs_trans		*tp,
	enum xfs_refcount_intent_type	type,
	xfs_fsblock_t			startblock,
	xfs_extlen_t			blockcount)
{
	struct xfs_refcount_intent	*ri;

	FUNC4(tp->t_mountp,
			FUNC2(tp->t_mountp, startblock),
			type, FUNC1(tp->t_mountp, startblock),
			blockcount);

	ri = FUNC3(sizeof(struct xfs_refcount_intent),
			KM_NOFS);
	FUNC0(&ri->ri_list);
	ri->ri_type = type;
	ri->ri_startblock = startblock;
	ri->ri_blockcount = blockcount;

	FUNC5(tp, XFS_DEFER_OPS_TYPE_REFCOUNT, &ri->ri_list);
}
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
typedef  int /*<<< orphan*/  uint64_t ;
struct xfs_trans {int /*<<< orphan*/  t_mountp; } ;
struct xfs_bmbt_irec {int /*<<< orphan*/  br_state; int /*<<< orphan*/  br_blockcount; int /*<<< orphan*/  br_startoff; int /*<<< orphan*/  br_startblock; } ;
struct xfs_rmap_intent {int ri_type; int ri_whichfork; int /*<<< orphan*/  ri_list; struct xfs_bmbt_irec ri_bmap; int /*<<< orphan*/  ri_owner; } ;
typedef  enum xfs_rmap_intent_type { ____Placeholder_xfs_rmap_intent_type } xfs_rmap_intent_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KM_NOFS ; 
 int /*<<< orphan*/  XFS_DEFER_OPS_TYPE_RMAP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct xfs_rmap_intent* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(
	struct xfs_trans		*tp,
	enum xfs_rmap_intent_type	type,
	uint64_t			owner,
	int				whichfork,
	struct xfs_bmbt_irec		*bmap)
{
	struct xfs_rmap_intent		*ri;

	FUNC4(tp->t_mountp,
			FUNC2(tp->t_mountp, bmap->br_startblock),
			type,
			FUNC1(tp->t_mountp, bmap->br_startblock),
			owner, whichfork,
			bmap->br_startoff,
			bmap->br_blockcount,
			bmap->br_state);

	ri = FUNC3(sizeof(struct xfs_rmap_intent), KM_NOFS);
	FUNC0(&ri->ri_list);
	ri->ri_type = type;
	ri->ri_owner = owner;
	ri->ri_whichfork = whichfork;
	ri->ri_bmap = *bmap;

	FUNC5(tp, XFS_DEFER_OPS_TYPE_RMAP, &ri->ri_list);
}
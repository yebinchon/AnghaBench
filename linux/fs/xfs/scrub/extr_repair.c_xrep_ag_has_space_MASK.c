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
struct xfs_perag {scalar_t__ pagf_freeblks; } ;
typedef  enum xfs_ag_resv_type { ____Placeholder_xfs_ag_resv_type } xfs_ag_resv_type ;

/* Variables and functions */
 int /*<<< orphan*/  XFS_AG_RESV_METADATA ; 
 int /*<<< orphan*/  XFS_AG_RESV_RMAPBT ; 
 int /*<<< orphan*/  FUNC0 (struct xfs_perag*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct xfs_perag*,int) ; 

bool
FUNC2(
	struct xfs_perag	*pag,
	xfs_extlen_t		nr_blocks,
	enum xfs_ag_resv_type	type)
{
	return  !FUNC0(pag, XFS_AG_RESV_RMAPBT) &&
		!FUNC0(pag, XFS_AG_RESV_METADATA) &&
		pag->pagf_freeblks > FUNC1(pag, type) + nr_blocks;
}
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
struct xfs_perag {int dummy; } ;
struct xfs_mount {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  XFS_AG_RESV_RMAPBT ; 
 int /*<<< orphan*/  FUNC0 (struct xfs_perag*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct xfs_perag* FUNC1 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_perag*) ; 

__attribute__((used)) static inline void
FUNC3(
	struct xfs_mount	*mp,
	xfs_agnumber_t		agno)
{
	struct xfs_perag	*pag;

	pag = FUNC1(mp, agno);
	FUNC0(pag, XFS_AG_RESV_RMAPBT, NULL, 1);
	FUNC2(pag);
}
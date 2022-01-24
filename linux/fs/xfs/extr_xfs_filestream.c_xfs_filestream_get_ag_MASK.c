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
typedef  int /*<<< orphan*/  xfs_mount_t ;
typedef  int /*<<< orphan*/  xfs_agnumber_t ;
struct xfs_perag {int /*<<< orphan*/  pagf_fstrms; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 struct xfs_perag* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_perag*) ; 

__attribute__((used)) static int
FUNC3(
	xfs_mount_t	*mp,
	xfs_agnumber_t	agno)
{
	struct xfs_perag *pag;
	int		ret;

	pag = FUNC1(mp, agno);
	ret = FUNC0(&pag->pagf_fstrms);
	FUNC2(pag);
	return ret;
}
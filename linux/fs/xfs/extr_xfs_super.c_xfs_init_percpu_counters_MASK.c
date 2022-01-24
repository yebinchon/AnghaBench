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
struct xfs_mount {int /*<<< orphan*/  m_icount; int /*<<< orphan*/  m_ifree; int /*<<< orphan*/  m_fdblocks; int /*<<< orphan*/  m_delalloc_blks; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(
	struct xfs_mount	*mp)
{
	int		error;

	error = FUNC1(&mp->m_icount, 0, GFP_KERNEL);
	if (error)
		return -ENOMEM;

	error = FUNC1(&mp->m_ifree, 0, GFP_KERNEL);
	if (error)
		goto free_icount;

	error = FUNC1(&mp->m_fdblocks, 0, GFP_KERNEL);
	if (error)
		goto free_ifree;

	error = FUNC1(&mp->m_delalloc_blks, 0, GFP_KERNEL);
	if (error)
		goto free_fdblocks;

	return 0;

free_fdblocks:
	FUNC0(&mp->m_fdblocks);
free_ifree:
	FUNC0(&mp->m_ifree);
free_icount:
	FUNC0(&mp->m_icount);
	return -ENOMEM;
}
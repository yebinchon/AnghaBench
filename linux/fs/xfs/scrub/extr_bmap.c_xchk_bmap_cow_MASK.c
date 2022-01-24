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
struct xfs_scrub {int /*<<< orphan*/  ip; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  XFS_COW_FORK ; 
 int FUNC0 (struct xfs_scrub*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

int
FUNC2(
	struct xfs_scrub	*sc)
{
	if (!FUNC1(sc->ip))
		return -ENOENT;

	return FUNC0(sc, XFS_COW_FORK);
}
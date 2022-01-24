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
typedef  int /*<<< orphan*/  xfs_lsn_t ;
struct xfs_ail {int /*<<< orphan*/  ail_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC3(
	struct xfs_ail	*ailp,
	xfs_lsn_t	*dst,
	xfs_lsn_t	*src)
{
	FUNC0(sizeof(xfs_lsn_t) == 8);	/* don't lock if it shrinks */
	FUNC1(&ailp->ail_lock);
	*dst = *src;
	FUNC2(&ailp->ail_lock);
}
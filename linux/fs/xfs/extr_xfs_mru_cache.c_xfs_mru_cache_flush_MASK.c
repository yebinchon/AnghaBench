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
struct xfs_mru_cache {int grp_count; int grp_time; int /*<<< orphan*/  lock; int /*<<< orphan*/  work; scalar_t__ queued; int /*<<< orphan*/  lists; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xfs_mru_cache*) ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_mru_cache*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(
	struct xfs_mru_cache	*mru)
{
	if (!mru || !mru->lists)
		return;

	FUNC3(&mru->lock);
	if (mru->queued) {
		FUNC4(&mru->lock);
		FUNC2(&mru->work);
		FUNC3(&mru->lock);
	}

	FUNC1(mru, jiffies + mru->grp_count * mru->grp_time);
	FUNC0(mru);

	FUNC4(&mru->lock);
}
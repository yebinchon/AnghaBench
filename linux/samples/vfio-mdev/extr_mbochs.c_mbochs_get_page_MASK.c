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
struct page {int dummy; } ;
struct mdev_state {scalar_t__ pagecount; int /*<<< orphan*/  ops_lock; } ;
typedef  scalar_t__ pgoff_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 struct page* FUNC1 (struct mdev_state*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct page *FUNC4(struct mdev_state *mdev_state,
				    pgoff_t pgoff)
{
	struct page *page;

	if (FUNC0(pgoff >= mdev_state->pagecount))
		return NULL;

	FUNC2(&mdev_state->ops_lock);
	page = FUNC1(mdev_state, pgoff);
	FUNC3(&mdev_state->ops_lock);

	return page;
}
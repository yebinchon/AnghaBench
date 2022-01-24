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
struct xfs_mru_cache_elem {int /*<<< orphan*/  list_node; } ;
struct xfs_mru_cache {int /*<<< orphan*/  lock; int /*<<< orphan*/  store; scalar_t__ lists; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct xfs_mru_cache_elem* FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

struct xfs_mru_cache_elem *
FUNC5(
	struct xfs_mru_cache	*mru,
	unsigned long		key)
{
	struct xfs_mru_cache_elem *elem;

	FUNC0(mru && mru->lists);
	if (!mru || !mru->lists)
		return NULL;

	FUNC3(&mru->lock);
	elem = FUNC2(&mru->store, key);
	if (elem)
		FUNC1(&elem->list_node);
	FUNC4(&mru->lock);

	return elem;
}
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
struct xfs_mru_cache_elem {unsigned long key; int /*<<< orphan*/  list_node; } ;
struct xfs_mru_cache {int /*<<< orphan*/  lock; int /*<<< orphan*/  store; scalar_t__ lists; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_mru_cache*,struct xfs_mru_cache_elem*) ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned long,struct xfs_mru_cache_elem*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int
FUNC8(
	struct xfs_mru_cache	*mru,
	unsigned long		key,
	struct xfs_mru_cache_elem *elem)
{
	int			error;

	FUNC0(mru && mru->lists);
	if (!mru || !mru->lists)
		return -EINVAL;

	if (FUNC4(GFP_NOFS))
		return -ENOMEM;

	FUNC1(&elem->list_node);
	elem->key = key;

	FUNC6(&mru->lock);
	error = FUNC3(&mru->store, key, elem);
	FUNC5();
	if (!error)
		FUNC2(mru, elem);
	FUNC7(&mru->lock);

	return error;
}
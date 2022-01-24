#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct select_data {int /*<<< orphan*/  dispose; struct dentry* victim; struct dentry* start; } ;
struct TYPE_2__ {int /*<<< orphan*/  count; } ;
struct dentry {int d_flags; TYPE_1__ d_lockref; } ;
typedef  enum d_walk_ret { ____Placeholder_d_walk_ret } d_walk_ret ;

/* Variables and functions */
 int DCACHE_LRU_LIST ; 
 int DCACHE_SHRINK_LIST ; 
 int D_WALK_CONTINUE ; 
 int D_WALK_NORETRY ; 
 int D_WALK_QUIT ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static enum d_walk_ret FUNC5(void *_data, struct dentry *dentry)
{
	struct select_data *data = _data;
	enum d_walk_ret ret = D_WALK_CONTINUE;

	if (data->start == dentry)
		goto out;

	if (dentry->d_flags & DCACHE_SHRINK_LIST) {
		if (!dentry->d_lockref.count) {
			FUNC4();
			data->victim = dentry;
			return D_WALK_QUIT;
		}
	} else {
		if (dentry->d_flags & DCACHE_LRU_LIST)
			FUNC0(dentry);
		if (!dentry->d_lockref.count)
			FUNC1(dentry, &data->dispose);
	}
	/*
	 * We can return to the caller if we have found some (this
	 * ensures forward progress). We'll be coming back to find
	 * the rest.
	 */
	if (!FUNC2(&data->dispose))
		ret = FUNC3() ? D_WALK_QUIT : D_WALK_NORETRY;
out:
	return ret;
}
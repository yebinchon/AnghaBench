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
typedef  int /*<<< orphan*/  u64 ;
struct devlink_resource {int /*<<< orphan*/ * occ_get_priv; int /*<<< orphan*/ * occ_get; } ;
struct devlink {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 struct devlink_resource* FUNC1 (struct devlink*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct devlink *devlink,
					 u64 resource_id)
{
	struct devlink_resource *resource;

	FUNC2(&devlink->lock);
	resource = FUNC1(devlink, NULL, resource_id);
	if (FUNC0(!resource))
		goto out;
	FUNC0(!resource->occ_get);

	resource->occ_get = NULL;
	resource->occ_get_priv = NULL;
out:
	FUNC3(&devlink->lock);
}
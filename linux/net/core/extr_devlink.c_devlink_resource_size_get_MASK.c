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
struct devlink_resource {int /*<<< orphan*/  size_new; int /*<<< orphan*/  size; } ;
struct devlink {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EINVAL ; 
 struct devlink_resource* FUNC0 (struct devlink*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct devlink *devlink,
			      u64 resource_id,
			      u64 *p_resource_size)
{
	struct devlink_resource *resource;
	int err = 0;

	FUNC1(&devlink->lock);
	resource = FUNC0(devlink, NULL, resource_id);
	if (!resource) {
		err = -EINVAL;
		goto out;
	}
	*p_resource_size = resource->size_new;
	resource->size = resource->size_new;
out:
	FUNC2(&devlink->lock);
	return err;
}
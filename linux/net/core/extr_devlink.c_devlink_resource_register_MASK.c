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
typedef  scalar_t__ u64 ;
struct list_head {int dummy; } ;
struct devlink_resource_size_params {int dummy; } ;
struct devlink_resource {char const* name; int size_valid; int /*<<< orphan*/  list; struct list_head resource_list; int /*<<< orphan*/  size_params; scalar_t__ id; scalar_t__ size_new; scalar_t__ size; struct devlink_resource* parent; } ;
struct devlink {int /*<<< orphan*/  lock; struct list_head resource_list; } ;

/* Variables and functions */
 scalar_t__ DEVLINK_RESOURCE_ID_PARENT_TOP ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
 struct devlink_resource* FUNC1 (struct devlink*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct devlink_resource*) ; 
 struct devlink_resource* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct devlink_resource_size_params const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct devlink *devlink,
			      const char *resource_name,
			      u64 resource_size,
			      u64 resource_id,
			      u64 parent_resource_id,
			      const struct devlink_resource_size_params *size_params)
{
	struct devlink_resource *resource;
	struct list_head *resource_list;
	bool top_hierarchy;
	int err = 0;

	top_hierarchy = parent_resource_id == DEVLINK_RESOURCE_ID_PARENT_TOP;

	FUNC6(&devlink->lock);
	resource = FUNC1(devlink, NULL, resource_id);
	if (resource) {
		err = -EINVAL;
		goto out;
	}

	resource = FUNC3(sizeof(*resource), GFP_KERNEL);
	if (!resource) {
		err = -ENOMEM;
		goto out;
	}

	if (top_hierarchy) {
		resource_list = &devlink->resource_list;
	} else {
		struct devlink_resource *parent_resource;

		parent_resource = FUNC1(devlink, NULL,
							parent_resource_id);
		if (parent_resource) {
			resource_list = &parent_resource->resource_list;
			resource->parent = parent_resource;
		} else {
			FUNC2(resource);
			err = -EINVAL;
			goto out;
		}
	}

	resource->name = resource_name;
	resource->size = resource_size;
	resource->size_new = resource_size;
	resource->id = resource_id;
	resource->size_valid = true;
	FUNC5(&resource->size_params, size_params,
	       sizeof(resource->size_params));
	FUNC0(&resource->resource_list);
	FUNC4(&resource->list, resource_list);
out:
	FUNC7(&devlink->lock);
	return err;
}
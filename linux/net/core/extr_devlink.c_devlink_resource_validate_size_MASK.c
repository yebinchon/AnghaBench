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
typedef  scalar_t__ u64 ;
struct netlink_ext_ack {int dummy; } ;
struct TYPE_2__ {scalar_t__ size_max; scalar_t__ size_min; int /*<<< orphan*/  size_granularity; } ;
struct devlink_resource {TYPE_1__ size_params; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static int
FUNC2(struct devlink_resource *resource, u64 size,
			       struct netlink_ext_ack *extack)
{
	u64 reminder;
	int err = 0;

	if (size > resource->size_params.size_max) {
		FUNC0(extack, "Size larger than maximum");
		err = -EINVAL;
	}

	if (size < resource->size_params.size_min) {
		FUNC0(extack, "Size smaller than minimum");
		err = -EINVAL;
	}

	FUNC1(size, resource->size_params.size_granularity, &reminder);
	if (reminder) {
		FUNC0(extack, "Wrong granularity");
		err = -EINVAL;
	}

	return err;
}
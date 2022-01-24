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
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct devlink_trap {scalar_t__ generic; TYPE_1__ group; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct devlink_trap const*) ; 
 int FUNC1 (struct devlink_trap const*) ; 

__attribute__((used)) static int FUNC2(const struct devlink_trap *trap)
{
	if (!trap || !trap->name || !trap->group.name)
		return -EINVAL;

	if (trap->generic)
		return FUNC1(trap);
	else
		return FUNC0(trap);
}
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
struct devlink_trap {int dummy; } ;
struct devlink {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct devlink*,struct devlink_trap const*) ; 
 int /*<<< orphan*/  FUNC1 (struct devlink*,struct devlink_trap const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(struct devlink *devlink,
			      const struct devlink_trap *traps,
			      size_t traps_count)
{
	int i;

	FUNC2(&devlink->lock);
	/* Make sure we do not have any packets in-flight while unregistering
	 * traps by disabling all of them and waiting for a grace period.
	 */
	for (i = traps_count - 1; i >= 0; i--)
		FUNC0(devlink, &traps[i]);
	FUNC4();
	for (i = traps_count - 1; i >= 0; i--)
		FUNC1(devlink, &traps[i]);
	FUNC3(&devlink->lock);
}
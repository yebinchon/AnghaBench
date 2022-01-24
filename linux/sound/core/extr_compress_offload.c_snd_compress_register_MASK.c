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
struct snd_compr {int /*<<< orphan*/  lock; TYPE_1__* ops; int /*<<< orphan*/ * name; } ;
struct TYPE_2__ {int /*<<< orphan*/  trigger; int /*<<< orphan*/  set_params; int /*<<< orphan*/  free; int /*<<< orphan*/  open; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  device_mutex ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (struct snd_compr*) ; 

int FUNC6(struct snd_compr *device)
{
	int retval;

	if (device->name == NULL || device->ops == NULL)
		return -EINVAL;

	FUNC3("Registering compressed device %s\n", device->name);
	if (FUNC4(!device->ops->open))
		return -EINVAL;
	if (FUNC4(!device->ops->free))
		return -EINVAL;
	if (FUNC4(!device->ops->set_params))
		return -EINVAL;
	if (FUNC4(!device->ops->trigger))
		return -EINVAL;

	FUNC0(&device->lock);

	/* register a compressed card */
	FUNC1(&device_mutex);
	retval = FUNC5(device);
	FUNC2(&device_mutex);
	return retval;
}
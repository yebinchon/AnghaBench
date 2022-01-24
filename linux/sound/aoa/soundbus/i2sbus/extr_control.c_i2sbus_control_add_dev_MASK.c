#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct device_node* of_node; } ;
struct TYPE_5__ {TYPE_1__ dev; } ;
struct TYPE_6__ {TYPE_2__ ofdev; } ;
struct i2sbus_dev {int bus_number; int /*<<< orphan*/  item; void* clock_disable; void* cell_disable; void* clock_enable; void* cell_enable; void* enable; TYPE_3__ sound; } ;
struct i2sbus_control {int /*<<< orphan*/  list; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC1 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 

int FUNC3(struct i2sbus_control *c,
			   struct i2sbus_dev *i2sdev)
{
	struct device_node *np;

	np = i2sdev->sound.ofdev.dev.of_node;
	i2sdev->enable = FUNC1(np, "enable");
	i2sdev->cell_enable = FUNC1(np, "cell-enable");
	i2sdev->clock_enable = FUNC1(np, "clock-enable");
	i2sdev->cell_disable = FUNC1(np, "cell-disable");
	i2sdev->clock_disable = FUNC1(np, "clock-disable");

	/* if the bus number is not 0 or 1 we absolutely need to use
	 * the platform functions -- there's nothing in Darwin that
	 * would allow seeing a system behind what the FCRs are then,
	 * and I don't want to go parsing a bunch of platform functions
	 * by hand to try finding a system... */
	if (i2sdev->bus_number != 0 && i2sdev->bus_number != 1 &&
	    (!i2sdev->enable ||
	     !i2sdev->cell_enable || !i2sdev->clock_enable ||
	     !i2sdev->cell_disable || !i2sdev->clock_disable)) {
		FUNC2(i2sdev->enable);
		FUNC2(i2sdev->cell_enable);
		FUNC2(i2sdev->clock_enable);
		FUNC2(i2sdev->cell_disable);
		FUNC2(i2sdev->clock_disable);
		return -ENODEV;
	}

	FUNC0(&i2sdev->item, &c->list);

	return 0;
}
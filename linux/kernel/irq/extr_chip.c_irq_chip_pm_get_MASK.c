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
struct irq_data {TYPE_1__* chip; } ;
struct TYPE_2__ {scalar_t__ parent_device; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_PM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

int FUNC3(struct irq_data *data)
{
	int retval;

	if (FUNC0(CONFIG_PM) && data->chip->parent_device) {
		retval = FUNC1(data->chip->parent_device);
		if (retval < 0) {
			FUNC2(data->chip->parent_device);
			return retval;
		}
	}

	return 0;
}
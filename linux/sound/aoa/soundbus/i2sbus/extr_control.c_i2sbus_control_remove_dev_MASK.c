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
struct i2sbus_dev {int /*<<< orphan*/  item; } ;
struct i2sbus_control {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i2sbus_control*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct i2sbus_control *c,
			       struct i2sbus_dev *i2sdev)
{
	/* this is serialised externally */
	FUNC1(&i2sdev->item);
	if (FUNC2(&c->list))
		FUNC0(c);
}
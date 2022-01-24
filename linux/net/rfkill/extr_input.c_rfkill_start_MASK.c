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
struct input_handle {TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  event_lock; int /*<<< orphan*/  sw; int /*<<< orphan*/  swbit; int /*<<< orphan*/  evbit; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_SW ; 
 int /*<<< orphan*/  SW_RFKILL_ALL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct input_handle *handle)
{
	/*
	 * Take event_lock to guard against configuration changes, we
	 * should be able to deal with concurrency with rfkill_event()
	 * just fine (which event_lock will also avoid).
	 */
	FUNC1(&handle->dev->event_lock);

	if (FUNC3(EV_SW, handle->dev->evbit) &&
	    FUNC3(SW_RFKILL_ALL, handle->dev->swbit))
		FUNC0(FUNC3(SW_RFKILL_ALL,
							handle->dev->sw));

	FUNC2(&handle->dev->event_lock);
}
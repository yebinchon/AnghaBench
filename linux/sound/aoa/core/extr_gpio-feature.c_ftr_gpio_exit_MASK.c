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
struct TYPE_2__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  work; scalar_t__ gpio_private; scalar_t__ notify; } ;
struct gpio_runtime {TYPE_1__ line_out_notify; TYPE_1__ line_in_notify; TYPE_1__ headphone_notify; scalar_t__ implementation_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct gpio_runtime*) ; 
 int /*<<< orphan*/  headphone_detect_irq ; 
 int /*<<< orphan*/  linein_detect_irq ; 
 int /*<<< orphan*/  lineout_detect_irq ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct gpio_runtime *rt)
{
	FUNC2(rt);
	rt->implementation_private = 0;
	if (rt->headphone_notify.notify)
		FUNC1(headphone_detect_irq, &rt->headphone_notify);
	if (rt->line_in_notify.gpio_private)
		FUNC1(linein_detect_irq, &rt->line_in_notify);
	if (rt->line_out_notify.gpio_private)
		FUNC1(lineout_detect_irq, &rt->line_out_notify);
	FUNC0(&rt->headphone_notify.work);
	FUNC0(&rt->line_in_notify.work);
	FUNC0(&rt->line_out_notify.work);
	FUNC3(&rt->headphone_notify.mutex);
	FUNC3(&rt->line_in_notify.mutex);
	FUNC3(&rt->line_out_notify.mutex);
}
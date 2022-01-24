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
struct rfkill_gpio_data {int clk_enabled; int /*<<< orphan*/  clk; int /*<<< orphan*/  reset_gpio; int /*<<< orphan*/  shutdown_gpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(void *data, bool blocked)
{
	struct rfkill_gpio_data *rfkill = data;

	if (!blocked && !FUNC0(rfkill->clk) && !rfkill->clk_enabled)
		FUNC2(rfkill->clk);

	FUNC3(rfkill->shutdown_gpio, !blocked);
	FUNC3(rfkill->reset_gpio, !blocked);

	if (blocked && !FUNC0(rfkill->clk) && rfkill->clk_enabled)
		FUNC1(rfkill->clk);

	rfkill->clk_enabled = !blocked;

	return 0;
}
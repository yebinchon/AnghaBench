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
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GCR ; 
 int /*<<< orphan*/  GCR_ACLINK_OFF ; 
 int /*<<< orphan*/  IRQ_AC97 ; 
 int /*<<< orphan*/ * ac97_clk ; 
 int /*<<< orphan*/ * ac97conf_clk ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reset_gpio ; 

void FUNC5(struct platform_device *dev)
{
	if (FUNC2())
		FUNC4(reset_gpio);
	GCR |= GCR_ACLINK_OFF;
	FUNC3(IRQ_AC97, NULL);
	if (ac97conf_clk) {
		FUNC1(ac97conf_clk);
		ac97conf_clk = NULL;
	}
	FUNC0(ac97_clk);
	FUNC1(ac97_clk);
	ac97_clk = NULL;
}
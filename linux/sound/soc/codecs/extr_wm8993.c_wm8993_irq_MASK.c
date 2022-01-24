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
struct wm8993_priv {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; int /*<<< orphan*/  fll_lock; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int WM8993_FLL_LOCK_EINT ; 
 int /*<<< orphan*/  WM8993_GPIOCTRL_2 ; 
 int /*<<< orphan*/  WM8993_GPIO_CTRL_1 ; 
 int WM8993_IRQ ; 
 int WM8993_TEMPOK_EINT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *data)
{
	struct wm8993_priv *wm8993 = data;
	int mask, val, ret;

	ret = FUNC4(wm8993->regmap, WM8993_GPIO_CTRL_1, &val);
	if (ret != 0) {
		FUNC3(wm8993->dev, "Failed to read interrupt status: %d\n",
			ret);
		return IRQ_NONE;
	}

	ret = FUNC4(wm8993->regmap, WM8993_GPIOCTRL_2, &mask);
	if (ret != 0) {
		FUNC3(wm8993->dev, "Failed to read interrupt mask: %d\n",
			ret);
		return IRQ_NONE;
	}

	/* The IRQ pin status is visible in the register too */
	val &= ~(mask | WM8993_IRQ);
	if (!val)
		return IRQ_NONE;

	if (val & WM8993_TEMPOK_EINT)
		FUNC1(wm8993->dev, "Thermal warning\n");

	if (val & WM8993_FLL_LOCK_EINT) {
		FUNC2(wm8993->dev, "FLL locked\n");
		FUNC0(&wm8993->fll_lock);
	}

	ret = FUNC5(wm8993->regmap, WM8993_GPIO_CTRL_1, val);
	if (ret != 0)
		FUNC3(wm8993->dev, "Failed to ack interrupt: %d\n", ret);

	return IRQ_HANDLED;
}
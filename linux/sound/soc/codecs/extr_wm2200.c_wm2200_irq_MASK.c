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
struct wm2200_priv {int /*<<< orphan*/  regmap; int /*<<< orphan*/  fll_lock; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 unsigned int WM2200_FLL_LOCK_EINT ; 
 int /*<<< orphan*/  WM2200_INTERRUPT_STATUS_2 ; 
 int /*<<< orphan*/  WM2200_INTERRUPT_STATUS_2_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *data)
{
	struct wm2200_priv *wm2200 = data;
	unsigned int val, mask;
	int ret;

	ret = FUNC4(wm2200->regmap, WM2200_INTERRUPT_STATUS_2, &val);
	if (ret != 0) {
		FUNC2(wm2200->dev, "Failed to read IRQ status: %d\n", ret);
		return IRQ_NONE;
	}

	ret = FUNC4(wm2200->regmap, WM2200_INTERRUPT_STATUS_2_MASK,
			   &mask);
	if (ret != 0) {
		FUNC3(wm2200->dev, "Failed to read IRQ mask: %d\n", ret);
		mask = 0;
	}

	val &= ~mask;

	if (val & WM2200_FLL_LOCK_EINT) {
		FUNC1(wm2200->dev, "FLL locked\n");
		FUNC0(&wm2200->fll_lock);
	}

	if (val) {
		FUNC5(wm2200->regmap, WM2200_INTERRUPT_STATUS_2, val);
		
		return IRQ_HANDLED;
	} else {
		return IRQ_NONE;
	}
}
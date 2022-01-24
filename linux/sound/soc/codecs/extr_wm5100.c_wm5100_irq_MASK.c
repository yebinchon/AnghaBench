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
struct wm5100_priv {int /*<<< orphan*/  regmap; int /*<<< orphan*/  dev; TYPE_1__* fll; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 unsigned int WM5100_ACCDET_EINT ; 
 unsigned int WM5100_FLL1_LOCK_EINT ; 
 unsigned int WM5100_FLL2_LOCK_EINT ; 
 int /*<<< orphan*/  WM5100_INTERRUPT_STATUS_3 ; 
 int /*<<< orphan*/  WM5100_INTERRUPT_STATUS_3_MASK ; 
 int /*<<< orphan*/  WM5100_INTERRUPT_STATUS_4 ; 
 int /*<<< orphan*/  WM5100_INTERRUPT_STATUS_4_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct wm5100_priv*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct wm5100_priv*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct wm5100_priv*) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *data)
{
	struct wm5100_priv *wm5100 = data;
	irqreturn_t status = IRQ_NONE;
	unsigned int irq_val, mask_val;
	int ret;

	ret = FUNC3(wm5100->regmap, WM5100_INTERRUPT_STATUS_3, &irq_val);
	if (ret < 0) {
		FUNC2(wm5100->dev, "Failed to read IRQ status 3: %d\n",
			ret);
		irq_val = 0;
	}

	ret = FUNC3(wm5100->regmap, WM5100_INTERRUPT_STATUS_3_MASK,
			  &mask_val);
	if (ret < 0) {
		FUNC2(wm5100->dev, "Failed to read IRQ mask 3: %d\n",
			ret);
		mask_val = 0xffff;
	}

	irq_val &= ~mask_val;

	FUNC4(wm5100->regmap, WM5100_INTERRUPT_STATUS_3, irq_val);

	if (irq_val)
		status = IRQ_HANDLED;

	FUNC5(wm5100, irq_val);

	if (irq_val & WM5100_FLL1_LOCK_EINT) {
		FUNC1(wm5100->dev, "FLL1 locked\n");
		FUNC0(&wm5100->fll[0].lock);
	}
	if (irq_val & WM5100_FLL2_LOCK_EINT) {
		FUNC1(wm5100->dev, "FLL2 locked\n");
		FUNC0(&wm5100->fll[1].lock);
	}

	if (irq_val & WM5100_ACCDET_EINT)
		FUNC7(wm5100);

	ret = FUNC3(wm5100->regmap, WM5100_INTERRUPT_STATUS_4, &irq_val);
	if (ret < 0) {
		FUNC2(wm5100->dev, "Failed to read IRQ status 4: %d\n",
			ret);
		irq_val = 0;
	}

	ret = FUNC3(wm5100->regmap, WM5100_INTERRUPT_STATUS_4_MASK,
			  &mask_val);
	if (ret < 0) {
		FUNC2(wm5100->dev, "Failed to read IRQ mask 4: %d\n",
			ret);
		mask_val = 0xffff;
	}

	irq_val &= ~mask_val;

	if (irq_val)
		status = IRQ_HANDLED;

	FUNC4(wm5100->regmap, WM5100_INTERRUPT_STATUS_4, irq_val);

	FUNC6(wm5100, irq_val);

	return status;
}
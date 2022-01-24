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
struct wm8962_priv {int /*<<< orphan*/  mic_work; int /*<<< orphan*/  regmap; int /*<<< orphan*/  fll_lock; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 unsigned int WM8962_FIFOS_ERR_EINT ; 
 unsigned int WM8962_FLL_LOCK_EINT ; 
 int /*<<< orphan*/  WM8962_INTERRUPT_STATUS_2 ; 
 int /*<<< orphan*/  WM8962_INTERRUPT_STATUS_2_MASK ; 
 unsigned int WM8962_MICD_EINT ; 
 unsigned int WM8962_MICSCD_EINT ; 
 int WM8962_TEMP_ERR_HP ; 
 int WM8962_TEMP_ERR_SPK ; 
 unsigned int WM8962_TEMP_SHUT_EINT ; 
 int WM8962_TEMP_WARN_HP ; 
 int WM8962_TEMP_WARN_SPK ; 
 int /*<<< orphan*/  WM8962_THERMAL_SHUTDOWN_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 struct wm8962_priv* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  system_power_efficient_wq ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC15(int irq, void *data)
{
	struct device *dev = data;
	struct wm8962_priv *wm8962 = FUNC4(dev);
	unsigned int mask;
	unsigned int active;
	int reg, ret;

	ret = FUNC8(dev);
	if (ret < 0) {
		FUNC3(dev, "Failed to resume: %d\n", ret);
		return IRQ_NONE;
	}

	ret = FUNC12(wm8962->regmap, WM8962_INTERRUPT_STATUS_2_MASK,
			  &mask);
	if (ret != 0) {
		FUNC9(dev);
		FUNC3(dev, "Failed to read interrupt mask: %d\n",
			ret);
		return IRQ_NONE;
	}

	ret = FUNC12(wm8962->regmap, WM8962_INTERRUPT_STATUS_2, &active);
	if (ret != 0) {
		FUNC9(dev);
		FUNC3(dev, "Failed to read interrupt: %d\n", ret);
		return IRQ_NONE;
	}

	active &= ~mask;

	if (!active) {
		FUNC9(dev);
		return IRQ_NONE;
	}

	/* Acknowledge the interrupts */
	ret = FUNC13(wm8962->regmap, WM8962_INTERRUPT_STATUS_2, active);
	if (ret != 0)
		FUNC6(dev, "Failed to ack interrupt: %d\n", ret);

	if (active & WM8962_FLL_LOCK_EINT) {
		FUNC2(dev, "FLL locked\n");
		FUNC0(&wm8962->fll_lock);
	}

	if (active & WM8962_FIFOS_ERR_EINT)
		FUNC3(dev, "FIFO error\n");

	if (active & WM8962_TEMP_SHUT_EINT) {
		FUNC1(dev, "Thermal shutdown\n");

		ret = FUNC12(wm8962->regmap,
				  WM8962_THERMAL_SHUTDOWN_STATUS,  &reg);
		if (ret != 0) {
			FUNC6(dev, "Failed to read thermal status: %d\n",
				 ret);
			reg = 0;
		}

		if (reg & WM8962_TEMP_ERR_HP)
			FUNC1(dev, "Headphone thermal error\n");
		if (reg & WM8962_TEMP_WARN_HP)
			FUNC1(dev, "Headphone thermal warning\n");
		if (reg & WM8962_TEMP_ERR_SPK)
			FUNC1(dev, "Speaker thermal error\n");
		if (reg & WM8962_TEMP_WARN_SPK)
			FUNC1(dev, "Speaker thermal warning\n");
	}

	if (active & (WM8962_MICSCD_EINT | WM8962_MICD_EINT)) {
		FUNC2(dev, "Microphone event detected\n");

#ifndef CONFIG_SND_SOC_WM8962_MODULE
		FUNC14(FUNC5(dev));
#endif

		FUNC10(dev, 300);

		FUNC11(system_power_efficient_wq,
				   &wm8962->mic_work,
				   FUNC7(250));
	}

	FUNC9(dev);

	return IRQ_HANDLED;
}
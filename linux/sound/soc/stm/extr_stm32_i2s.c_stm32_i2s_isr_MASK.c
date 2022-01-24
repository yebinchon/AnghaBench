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
typedef  unsigned long u32 ;
struct stm32_i2s_data {int /*<<< orphan*/  irq_lock; scalar_t__ substream; int /*<<< orphan*/  regmap; struct platform_device* pdev; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  I2S_IFCR_MASK ; 
 unsigned long I2S_SR_OVR ; 
 unsigned long I2S_SR_TIFRE ; 
 unsigned long I2S_SR_UDR ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  STM32_I2S_IER_REG ; 
 int /*<<< orphan*/  STM32_I2S_IFCR_REG ; 
 int /*<<< orphan*/  STM32_I2S_SR_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *devid)
{
	struct stm32_i2s_data *i2s = (struct stm32_i2s_data *)devid;
	struct platform_device *pdev = i2s->pdev;
	u32 sr, ier;
	unsigned long flags;
	int err = 0;

	FUNC1(i2s->regmap, STM32_I2S_SR_REG, &sr);
	FUNC1(i2s->regmap, STM32_I2S_IER_REG, &ier);

	flags = sr & ier;
	if (!flags) {
		FUNC0(&pdev->dev, "Spurious IRQ sr=0x%08x, ier=0x%08x\n",
			sr, ier);
		return IRQ_NONE;
	}

	FUNC2(i2s->regmap, STM32_I2S_IFCR_REG,
			  I2S_IFCR_MASK, flags);

	if (flags & I2S_SR_OVR) {
		FUNC0(&pdev->dev, "Overrun\n");
		err = 1;
	}

	if (flags & I2S_SR_UDR) {
		FUNC0(&pdev->dev, "Underrun\n");
		err = 1;
	}

	if (flags & I2S_SR_TIFRE)
		FUNC0(&pdev->dev, "Frame error\n");

	FUNC4(&i2s->irq_lock);
	if (err && i2s->substream)
		FUNC3(i2s->substream);
	FUNC5(&i2s->irq_lock);

	return IRQ_HANDLED;
}
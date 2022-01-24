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
struct resource {int dummy; } ;
struct dw_dma_chip {int irq; struct device* dev; int /*<<< orphan*/  regs; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 struct dw_dma_chip* FUNC1 (int /*<<< orphan*/ ) ; 
 struct dw_dma_chip* FUNC2 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct resource*) ; 
 struct dw_dma_chip* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct dw_dma_chip*) ; 

__attribute__((used)) static struct dw_dma_chip *FUNC8(struct device *dev, struct resource *mem,
	int irq)
{
	struct dw_dma_chip *chip;
	int err;

	chip = FUNC5(dev, sizeof(*chip), GFP_KERNEL);
	if (!chip)
		return FUNC2(-ENOMEM);

	chip->irq = irq;
	chip->regs = FUNC4(dev, mem);
	if (FUNC3(chip->regs))
		return FUNC1(chip->regs);

	err = FUNC6(dev, FUNC0(31));
	if (err)
		return FUNC2(err);

	chip->dev = dev;

	err = FUNC7(chip);
	if (err)
		return FUNC2(err);

	return chip;
}
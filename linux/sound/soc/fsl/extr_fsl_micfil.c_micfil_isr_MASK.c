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
typedef  int u32 ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct fsl_micfil {int /*<<< orphan*/  regmap; struct platform_device* pdev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int FUNC0 (int) ; 
 int MICFIL_FIFO_NUM ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int MICFIL_OUTPUT_CHANNELS ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  REG_MICFIL_CTRL1 ; 
 int /*<<< orphan*/  REG_MICFIL_FIFO_STAT ; 
 int /*<<< orphan*/  REG_MICFIL_STAT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *devid)
{
	struct fsl_micfil *micfil = (struct fsl_micfil *)devid;
	struct platform_device *pdev = micfil->pdev;
	u32 stat_reg;
	u32 fifo_stat_reg;
	u32 ctrl1_reg;
	bool dma_enabled;
	int i;

	FUNC5(micfil->regmap, REG_MICFIL_STAT, &stat_reg);
	FUNC5(micfil->regmap, REG_MICFIL_CTRL1, &ctrl1_reg);
	FUNC5(micfil->regmap, REG_MICFIL_FIFO_STAT, &fifo_stat_reg);

	dma_enabled = FUNC0(ctrl1_reg);

	/* Channel 0-7 Output Data Flags */
	for (i = 0; i < MICFIL_OUTPUT_CHANNELS; i++) {
		if (stat_reg & FUNC3(i))
			FUNC4(&pdev->dev,
				"Data available in Data Channel %d\n", i);
		/* if DMA is not enabled, field must be written with 1
		 * to clear
		 */
		if (!dma_enabled)
			FUNC6(micfil->regmap,
					  REG_MICFIL_STAT,
					  FUNC3(i),
					  1);
	}

	for (i = 0; i < MICFIL_FIFO_NUM; i++) {
		if (fifo_stat_reg & FUNC1(i))
			FUNC4(&pdev->dev,
				"FIFO Overflow Exception flag for channel %d\n",
				i);

		if (fifo_stat_reg & FUNC2(i))
			FUNC4(&pdev->dev,
				"FIFO Underflow Exception flag for channel %d\n",
				i);
	}

	return IRQ_HANDLED;
}
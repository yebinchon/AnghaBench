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
struct mtk_base_afe {int /*<<< orphan*/  regmap; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFE_CONN_24BIT ; 
 int /*<<< orphan*/  AFE_DAC_CON0 ; 
 int /*<<< orphan*/  AFE_IRQ_MCU_EN ; 
 int /*<<< orphan*/  AFE_IRQ_MCU_EN_MASK_SFT ; 
 int /*<<< orphan*/  AFE_MEMIF_HDALIGN ; 
 int /*<<< orphan*/  AFE_MEMIF_MSB ; 
 int AFE_ON_MASK_SFT ; 
 int AFE_ON_SFT ; 
 int CPU_COMPACT_MODE_MASK_SFT ; 
 int CPU_HD_ALIGN_MASK_SFT ; 
 struct mtk_base_afe* FUNC0 (struct device*) ; 
 int FUNC1 (struct mtk_base_afe*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct mtk_base_afe *afe = FUNC0(dev);
	int ret;

	ret = FUNC1(afe);
	if (ret)
		return ret;

	/* irq signal to mcu only */
	FUNC3(afe->regmap, AFE_IRQ_MCU_EN, AFE_IRQ_MCU_EN_MASK_SFT);

	/* force all memif use normal mode */
	FUNC2(afe->regmap, AFE_MEMIF_HDALIGN,
			   0x7ff << 16, 0x7ff << 16);
	/* force cpu use normal mode when access sram data */
	FUNC2(afe->regmap, AFE_MEMIF_MSB,
			   CPU_COMPACT_MODE_MASK_SFT, 0);
	/* force cpu use 8_24 format when writing 32bit data */
	FUNC2(afe->regmap, AFE_MEMIF_MSB,
			   CPU_HD_ALIGN_MASK_SFT, 0);

	/* set all output port to 24bit */
	FUNC2(afe->regmap, AFE_CONN_24BIT,
			   0x3fffffff, 0x3fffffff);

	/* enable AFE */
	FUNC2(afe->regmap, AFE_DAC_CON0,
			   AFE_ON_MASK_SFT,
			   0x1 << AFE_ON_SFT);

	return 0;
}
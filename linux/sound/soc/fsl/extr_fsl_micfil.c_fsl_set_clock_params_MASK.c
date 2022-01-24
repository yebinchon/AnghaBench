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
struct fsl_micfil {int /*<<< orphan*/  regmap; int /*<<< orphan*/  mclk; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MICFIL_CTRL2_CICOSR_MASK ; 
 int /*<<< orphan*/  MICFIL_CTRL2_CLKDIV_MASK ; 
 int MICFIL_CTRL2_OSR_DEFAULT ; 
 int /*<<< orphan*/  REG_MICFIL_CTRL2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ,...) ; 
 struct fsl_micfil* FUNC2 (struct device*) ; 
 int FUNC3 (struct fsl_micfil*,unsigned int) ; 
 int FUNC4 (struct fsl_micfil*,unsigned int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct device *dev, unsigned int rate)
{
	struct fsl_micfil *micfil = FUNC2(dev);
	int clk_div;
	int ret = 0;

	ret = FUNC3(micfil, rate);
	if (ret < 0)
		FUNC1(dev, "failed to set mclk[%lu] to rate %u\n",
			FUNC0(micfil->mclk), rate);

	/* set CICOSR */
	ret |= FUNC5(micfil->regmap, REG_MICFIL_CTRL2,
				 MICFIL_CTRL2_CICOSR_MASK,
				 MICFIL_CTRL2_OSR_DEFAULT);
	if (ret)
		FUNC1(dev, "failed to set CICOSR in reg 0x%X\n",
			REG_MICFIL_CTRL2);

	/* set CLK_DIV */
	clk_div = FUNC4(micfil, rate);
	if (clk_div < 0)
		ret = -EINVAL;

	ret |= FUNC5(micfil->regmap, REG_MICFIL_CTRL2,
				 MICFIL_CTRL2_CLKDIV_MASK, clk_div);
	if (ret)
		FUNC1(dev, "failed to set CLKDIV in reg 0x%X\n",
			REG_MICFIL_CTRL2);

	return ret;
}
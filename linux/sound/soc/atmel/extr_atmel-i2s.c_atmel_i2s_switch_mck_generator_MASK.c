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
struct atmel_i2s_dev {int /*<<< orphan*/  regmap; TYPE_1__* gck_param; int /*<<< orphan*/  gclk; } ;
struct TYPE_2__ {int mck; int imckdiv; int /*<<< orphan*/  imckfs; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATMEL_I2SC_CR ; 
 int /*<<< orphan*/  ATMEL_I2SC_CR_CKDIS ; 
 int /*<<< orphan*/  ATMEL_I2SC_CR_CKEN ; 
 int /*<<< orphan*/  ATMEL_I2SC_MR ; 
 unsigned int FUNC0 (int) ; 
 unsigned int ATMEL_I2SC_MR_IMCKDIV_MASK ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int ATMEL_I2SC_MR_IMCKFS_MASK ; 
 unsigned int ATMEL_I2SC_MR_IMCKMODE_I2SMCK ; 
 unsigned int ATMEL_I2SC_MR_IMCKMODE_MASK ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct atmel_i2s_dev *dev,
					  bool enabled)
{
	unsigned int mr, mr_mask;
	unsigned long gclk_rate;
	int ret;

	mr = 0;
	mr_mask = (ATMEL_I2SC_MR_IMCKDIV_MASK |
		   ATMEL_I2SC_MR_IMCKFS_MASK |
		   ATMEL_I2SC_MR_IMCKMODE_MASK);

	if (!enabled) {
		/* Disable the I2S Master Clock generator. */
		ret = FUNC6(dev->regmap, ATMEL_I2SC_CR,
				   ATMEL_I2SC_CR_CKDIS);
		if (ret)
			return ret;

		/* Reset the I2S Master Clock generator settings. */
		ret = FUNC5(dev->regmap, ATMEL_I2SC_MR,
					 mr_mask, mr);
		if (ret)
			return ret;

		/* Disable/unprepare the PMC generated clock. */
		FUNC2(dev->gclk);

		return 0;
	}

	if (!dev->gck_param)
		return -EINVAL;

	gclk_rate = dev->gck_param->mck * (dev->gck_param->imckdiv + 1);

	ret = FUNC4(dev->gclk, gclk_rate);
	if (ret)
		return ret;

	ret = FUNC3(dev->gclk);
	if (ret)
		return ret;

	/* Update the Mode Register to generate the I2S Master Clock. */
	mr |= FUNC0(dev->gck_param->imckdiv);
	mr |= FUNC1(dev->gck_param->imckfs);
	mr |= ATMEL_I2SC_MR_IMCKMODE_I2SMCK;
	ret = FUNC5(dev->regmap, ATMEL_I2SC_MR, mr_mask, mr);
	if (ret)
		return ret;

	/* Finally enable the I2S Master Clock generator. */
	return FUNC6(dev->regmap, ATMEL_I2SC_CR,
			    ATMEL_I2SC_CR_CKEN);
}
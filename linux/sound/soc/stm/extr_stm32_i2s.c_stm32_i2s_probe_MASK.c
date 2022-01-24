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
typedef  scalar_t__ u32 ;
struct stm32_i2s_data {int /*<<< orphan*/  regmap; int /*<<< orphan*/  dai_drv; int /*<<< orphan*/  regmap_conf; int /*<<< orphan*/  base; int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  lock_fd; int /*<<< orphan*/  ms_flg; struct platform_device* pdev; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2S_CGFR_I2SMOD ; 
 int /*<<< orphan*/  I2S_HWCFGR_I2S_SUPPORT_MASK ; 
 scalar_t__ I2S_IPIDR_NUMBER ; 
 int /*<<< orphan*/  I2S_MS_NOT_SET ; 
 int /*<<< orphan*/  I2S_VERR_MAJ_MASK ; 
 int /*<<< orphan*/  I2S_VERR_MIN_MASK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STM32_I2S_CGFR_REG ; 
 int /*<<< orphan*/  STM32_I2S_HWCFGR_REG ; 
 int /*<<< orphan*/  STM32_I2S_IPIDR_REG ; 
 int /*<<< orphan*/  STM32_I2S_VERR_REG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 struct stm32_i2s_data* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct stm32_i2s_data*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stm32_i2s_component ; 
 int FUNC13 (struct platform_device*,struct stm32_i2s_data*) ; 
 int FUNC14 (struct platform_device*,struct stm32_i2s_data*) ; 
 int /*<<< orphan*/  stm32_i2s_pcm_config ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct stm32_i2s_data *i2s;
	u32 val;
	int ret;

	i2s = FUNC5(&pdev->dev, sizeof(*i2s), GFP_KERNEL);
	if (!i2s)
		return -ENOMEM;

	ret = FUNC14(pdev, i2s);
	if (ret)
		return ret;

	i2s->pdev = pdev;
	i2s->ms_flg = I2S_MS_NOT_SET;
	FUNC12(&i2s->lock_fd);
	FUNC12(&i2s->irq_lock);
	FUNC9(pdev, i2s);

	ret = FUNC13(pdev, i2s);
	if (ret)
		return ret;

	i2s->regmap = FUNC6(&pdev->dev, "pclk",
						i2s->base, i2s->regmap_conf);
	if (FUNC1(i2s->regmap)) {
		FUNC4(&pdev->dev, "regmap init failed\n");
		return FUNC2(i2s->regmap);
	}

	ret = FUNC8(&pdev->dev, &stm32_i2s_component,
					      i2s->dai_drv, 1);
	if (ret)
		return ret;

	ret = FUNC7(&pdev->dev,
					      &stm32_i2s_pcm_config, 0);
	if (ret)
		return ret;

	/* Set SPI/I2S in i2s mode */
	ret = FUNC11(i2s->regmap, STM32_I2S_CGFR_REG,
				 I2S_CGFR_I2SMOD, I2S_CGFR_I2SMOD);
	if (ret)
		return ret;

	ret = FUNC10(i2s->regmap, STM32_I2S_IPIDR_REG, &val);
	if (ret)
		return ret;

	if (val == I2S_IPIDR_NUMBER) {
		ret = FUNC10(i2s->regmap, STM32_I2S_HWCFGR_REG, &val);
		if (ret)
			return ret;

		if (!FUNC0(I2S_HWCFGR_I2S_SUPPORT_MASK, val)) {
			FUNC4(&pdev->dev,
				"Device does not support i2s mode\n");
			return -EPERM;
		}

		ret = FUNC10(i2s->regmap, STM32_I2S_VERR_REG, &val);

		FUNC3(&pdev->dev, "I2S version: %lu.%lu registered\n",
			FUNC0(I2S_VERR_MAJ_MASK, val),
			FUNC0(I2S_VERR_MIN_MASK, val));
	}

	return ret;
}
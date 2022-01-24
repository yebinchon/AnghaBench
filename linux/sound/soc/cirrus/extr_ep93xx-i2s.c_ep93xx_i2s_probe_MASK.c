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
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;
struct ep93xx_i2s_info {void* mclk; void* sclk; void* lrclk; void* regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_SND_EP93XX_SOC_I2S_WATCHDOG ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct ep93xx_i2s_info*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 struct ep93xx_i2s_info* FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 void* FUNC8 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ep93xx_i2s_info*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ep93xx_i2s_component ; 
 int /*<<< orphan*/  ep93xx_i2s_dai ; 
 int /*<<< orphan*/  ep93xx_i2s_interrupt ; 
 int FUNC11 (struct platform_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct ep93xx_i2s_info *info;
	int err;

	info = FUNC7(&pdev->dev, sizeof(*info), GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	info->regs = FUNC8(pdev, 0);
	if (FUNC1(info->regs))
		return FUNC2(info->regs);

	if (FUNC0(CONFIG_SND_EP93XX_SOC_I2S_WATCHDOG)) {
		int irq = FUNC11(pdev, 0);
		if (irq <= 0)
			return irq < 0 ? irq : -ENODEV;

		err = FUNC9(&pdev->dev, irq, ep93xx_i2s_interrupt, 0,
				       pdev->name, info);
		if (err)
			return err;
	}

	info->mclk = FUNC3(&pdev->dev, "mclk");
	if (FUNC1(info->mclk)) {
		err = FUNC2(info->mclk);
		goto fail;
	}

	info->sclk = FUNC3(&pdev->dev, "sclk");
	if (FUNC1(info->sclk)) {
		err = FUNC2(info->sclk);
		goto fail_put_mclk;
	}

	info->lrclk = FUNC3(&pdev->dev, "lrclk");
	if (FUNC1(info->lrclk)) {
		err = FUNC2(info->lrclk);
		goto fail_put_sclk;
	}

	FUNC5(&pdev->dev, info);

	err = FUNC10(&pdev->dev, &ep93xx_i2s_component,
					 &ep93xx_i2s_dai, 1);
	if (err)
		goto fail_put_lrclk;

	err = FUNC6(&pdev->dev);
	if (err)
		goto fail_put_lrclk;

	return 0;

fail_put_lrclk:
	FUNC4(info->lrclk);
fail_put_sclk:
	FUNC4(info->sclk);
fail_put_mclk:
	FUNC4(info->mclk);
fail:
	return err;
}
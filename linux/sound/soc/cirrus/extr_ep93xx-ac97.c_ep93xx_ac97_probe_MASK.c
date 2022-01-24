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
struct ep93xx_ac97_info {int /*<<< orphan*/ * dev; int /*<<< orphan*/  done; int /*<<< orphan*/  lock; int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_TRIGGER_HIGH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct ep93xx_ac97_info*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 struct ep93xx_ac97_info* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ep93xx_ac97_info*) ; 
 int /*<<< orphan*/  ep93xx_ac97_component ; 
 int /*<<< orphan*/  ep93xx_ac97_dai ; 
 struct ep93xx_ac97_info* ep93xx_ac97_info ; 
 int /*<<< orphan*/  ep93xx_ac97_interrupt ; 
 int /*<<< orphan*/  ep93xx_ac97_ops ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct ep93xx_ac97_info*) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct ep93xx_ac97_info *info;
	int irq;
	int ret;

	info = FUNC4(&pdev->dev, sizeof(*info), GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	info->regs = FUNC5(pdev, 0);
	if (FUNC0(info->regs))
		return FUNC1(info->regs);

	irq = FUNC9(pdev, 0);
	if (irq <= 0)
		return irq < 0 ? irq : -ENODEV;

	ret = FUNC6(&pdev->dev, irq, ep93xx_ac97_interrupt,
			       IRQF_TRIGGER_HIGH, pdev->name, info);
	if (ret)
		goto fail;

	FUNC2(&pdev->dev, info);

	FUNC8(&info->lock);
	FUNC7(&info->done);
	info->dev = &pdev->dev;

	ep93xx_ac97_info = info;
	FUNC10(pdev, info);

	ret = FUNC12(&ep93xx_ac97_ops);
	if (ret)
		goto fail;

	ret = FUNC11(&pdev->dev, &ep93xx_ac97_component,
					 &ep93xx_ac97_dai, 1);
	if (ret)
		goto fail;

	ret = FUNC3(&pdev->dev);
	if (ret)
		goto fail_unregister;

	return 0;

fail_unregister:
	FUNC13(&pdev->dev);
fail:
	ep93xx_ac97_info = NULL;
	FUNC12(NULL);
	return ret;
}
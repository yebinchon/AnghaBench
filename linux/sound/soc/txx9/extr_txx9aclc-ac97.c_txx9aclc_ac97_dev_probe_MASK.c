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
struct txx9aclc_plat_drvdata {scalar_t__ physbase; int /*<<< orphan*/  base; } ;
struct resource {scalar_t__ start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ TXX9_DIRECTMAP_BASE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct resource*) ; 
 struct txx9aclc_plat_drvdata* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct txx9aclc_plat_drvdata*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC7 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC8 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct txx9aclc_plat_drvdata*) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  txx9aclc_ac97_component ; 
 int /*<<< orphan*/  txx9aclc_ac97_dai ; 
 int /*<<< orphan*/  txx9aclc_ac97_irq ; 
 int /*<<< orphan*/  txx9aclc_ac97_ops ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct txx9aclc_plat_drvdata *drvdata;
	struct resource *r;
	int err;
	int irq;

	irq = FUNC7(pdev, 0);
	if (irq < 0)
		return irq;

	drvdata = FUNC4(&pdev->dev, sizeof(*drvdata), GFP_KERNEL);
	if (!drvdata)
		return -ENOMEM;

	r = FUNC8(pdev, IORESOURCE_MEM, 0);
	drvdata->base = FUNC3(&pdev->dev, r);
	if (FUNC0(drvdata->base))
		return FUNC1(drvdata->base);

	FUNC9(pdev, drvdata);
	drvdata->physbase = r->start;
	if (sizeof(drvdata->physbase) > sizeof(r->start) &&
	    r->start >= TXX9_DIRECTMAP_BASE &&
	    r->start < TXX9_DIRECTMAP_BASE + 0x400000)
		drvdata->physbase |= 0xf00000000ull;
	err = FUNC5(&pdev->dev, irq, txx9aclc_ac97_irq,
			       0, FUNC2(&pdev->dev), drvdata);
	if (err < 0)
		return err;

	err = FUNC10(&txx9aclc_ac97_ops);
	if (err < 0)
		return err;

	return FUNC6(&pdev->dev, &txx9aclc_ac97_component,
					  &txx9aclc_ac97_dai, 1);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_11__ {scalar_t__ platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct i2s_dev_data {int /*<<< orphan*/  acp3x_base; int /*<<< orphan*/  i2s_irq; int /*<<< orphan*/ * capture_stream; int /*<<< orphan*/ * play_stream; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acp3x_i2s_component ; 
 int /*<<< orphan*/  acp3x_i2s_dai_driver ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct i2s_dev_data*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct i2s_dev_data* FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,char*,struct i2s_dev_data*) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  i2s_irq_handler ; 
 struct resource* FUNC9 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (struct resource*) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	int status;
	struct resource *res;
	struct i2s_dev_data *adata;
	unsigned int irqflags;

	if (!pdev->dev.platform_data) {
		FUNC2(&pdev->dev, "platform_data not retrieved\n");
		return -ENODEV;
	}
	irqflags = *((unsigned int *)(pdev->dev.platform_data));

	res = FUNC9(pdev, IORESOURCE_MEM, 0);
	if (!res) {
		FUNC2(&pdev->dev, "IORESOURCE_IRQ FAILED\n");
			return -ENODEV;
	}

	adata = FUNC6(&pdev->dev, sizeof(*adata), GFP_KERNEL);
	if (!adata)
		return -ENOMEM;

	adata->acp3x_base = FUNC5(&pdev->dev, res->start,
					 FUNC13(res));

	res = FUNC9(pdev, IORESOURCE_IRQ, 0);
	if (!res) {
		FUNC2(&pdev->dev, "IORESOURCE_IRQ FAILED\n");
		return -ENODEV;
	}

	adata->i2s_irq = res->start;
	adata->play_stream = NULL;
	adata->capture_stream = NULL;

	FUNC4(&pdev->dev, adata);
	/* Initialize ACP */
	status = FUNC1(adata->acp3x_base);
	if (status)
		return -ENODEV;
	status = FUNC8(&pdev->dev,
						 &acp3x_i2s_component,
						 &acp3x_i2s_dai_driver, 1);
	if (status) {
		FUNC2(&pdev->dev, "Fail to register acp i2s dai\n");
		goto dev_err;
	}
	status = FUNC7(&pdev->dev, adata->i2s_irq, i2s_irq_handler,
				  irqflags, "ACP3x_I2S_IRQ", adata);
	if (status) {
		FUNC2(&pdev->dev, "ACP3x I2S IRQ request failed\n");
		goto dev_err;
	}

	FUNC11(&pdev->dev, 10000);
	FUNC12(&pdev->dev);
	FUNC10(&pdev->dev);
	return 0;
dev_err:
	status = FUNC0(adata->acp3x_base);
	if (status)
		FUNC2(&pdev->dev, "ACP de-init failed\n");
	else
		FUNC3(&pdev->dev, "ACP de-initialized\n");
	/*ignore device status and return driver probe error*/
	return -ENODEV;
}
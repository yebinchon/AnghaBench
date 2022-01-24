#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_10__ {int /*<<< orphan*/ * platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct audio_drv_data {int /*<<< orphan*/  asic_type; int /*<<< orphan*/  acp_mmio; int /*<<< orphan*/ * capture_i2sbt_stream; int /*<<< orphan*/ * play_i2sbt_stream; int /*<<< orphan*/ * capture_i2ssp_stream; int /*<<< orphan*/ * play_i2ssp_stream; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acp_asoc_platform ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct audio_drv_data*) ; 
 struct audio_drv_data* FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_1__*) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dma_irq_handler ; 
 struct resource* FUNC9 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	int status;
	struct audio_drv_data *audio_drv_data;
	struct resource *res;
	const u32 *pdata = pdev->dev.platform_data;

	if (!pdata) {
		FUNC3(&pdev->dev, "Missing platform data\n");
		return -ENODEV;
	}

	audio_drv_data = FUNC5(&pdev->dev, sizeof(struct audio_drv_data),
				      GFP_KERNEL);
	if (!audio_drv_data)
		return -ENOMEM;

	audio_drv_data->acp_mmio = FUNC6(pdev, 0);
	if (FUNC0(audio_drv_data->acp_mmio))
		return FUNC1(audio_drv_data->acp_mmio);

	/*
	 * The following members gets populated in device 'open'
	 * function. Till then interrupts are disabled in 'acp_init'
	 * and device doesn't generate any interrupts.
	 */

	audio_drv_data->play_i2ssp_stream = NULL;
	audio_drv_data->capture_i2ssp_stream = NULL;
	audio_drv_data->play_i2sbt_stream = NULL;
	audio_drv_data->capture_i2sbt_stream = NULL;

	audio_drv_data->asic_type =  *pdata;

	res = FUNC9(pdev, IORESOURCE_IRQ, 0);
	if (!res) {
		FUNC3(&pdev->dev, "IORESOURCE_IRQ FAILED\n");
		return -ENODEV;
	}

	status = FUNC7(&pdev->dev, res->start, dma_irq_handler,
				  0, "ACP_IRQ", &pdev->dev);
	if (status) {
		FUNC3(&pdev->dev, "ACP IRQ request failed\n");
		return status;
	}

	FUNC4(&pdev->dev, audio_drv_data);

	/* Initialize the ACP */
	status = FUNC2(audio_drv_data->acp_mmio, audio_drv_data->asic_type);
	if (status) {
		FUNC3(&pdev->dev, "ACP Init failed status:%d\n", status);
		return status;
	}

	status = FUNC8(&pdev->dev,
						 &acp_asoc_platform, NULL, 0);
	if (status != 0) {
		FUNC3(&pdev->dev, "Fail to register ALSA platform device\n");
		return status;
	}

	FUNC11(&pdev->dev, 10000);
	FUNC12(&pdev->dev);
	FUNC10(&pdev->dev);

	return status;
}
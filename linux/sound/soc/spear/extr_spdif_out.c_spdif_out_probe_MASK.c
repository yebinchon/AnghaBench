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
struct spear_spdif_platform_data {int /*<<< orphan*/  filter; int /*<<< orphan*/  dma_params; } ;
struct TYPE_2__ {int max_burst; int /*<<< orphan*/  addr_width; scalar_t__ addr; int /*<<< orphan*/  data; } ;
struct spdif_out_dev {int /*<<< orphan*/  config; TYPE_1__ dma_params; int /*<<< orphan*/  clk; int /*<<< orphan*/  io_base; } ;
struct resource {scalar_t__ start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_SLAVE_BUSWIDTH_4_BYTES ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SPDIF_OUT_FIFO_DATA ; 
 struct spear_spdif_platform_data* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct spdif_out_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct resource*) ; 
 struct spdif_out_dev* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct resource* FUNC9 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  spdif_out_component ; 
 int /*<<< orphan*/  spdif_out_dai ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct spdif_out_dev *host;
	struct spear_spdif_platform_data *pdata;
	struct resource *res;
	int ret;

	host = FUNC6(&pdev->dev, sizeof(*host), GFP_KERNEL);
	if (!host)
		return -ENOMEM;

	res = FUNC9(pdev, IORESOURCE_MEM, 0);
	host->io_base = FUNC5(&pdev->dev, res);
	if (FUNC0(host->io_base))
		return FUNC1(host->io_base);

	host->clk = FUNC4(&pdev->dev, NULL);
	if (FUNC0(host->clk))
		return FUNC1(host->clk);

	pdata = FUNC2(&pdev->dev);

	host->dma_params.data = pdata->dma_params;
	host->dma_params.addr = res->start + SPDIF_OUT_FIFO_DATA;
	host->dma_params.max_burst = 16;
	host->dma_params.addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;

	FUNC3(&pdev->dev, host);

	ret = FUNC7(&pdev->dev, &spdif_out_component,
					      &spdif_out_dai, 1);
	if (ret)
		return ret;

	return FUNC8(&pdev->dev, &host->config,
						pdata->filter);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_dai_driver {int dummy; } ;
struct resource {scalar_t__ start; } ;
struct TYPE_13__ {struct imx_ssi_platform_data* platform_data; } ;
struct platform_device {TYPE_3__ dev; } ;
struct imx_ssi_platform_data {int flags; int /*<<< orphan*/  ac97_warm_reset; int /*<<< orphan*/  ac97_reset; } ;
struct TYPE_14__ {int irq; TYPE_2__* dma_params_tx; TYPE_1__* dma_params_rx; scalar_t__ base; } ;
struct TYPE_12__ {int maxburst; int /*<<< orphan*/ * filter_data; scalar_t__ addr; } ;
struct TYPE_11__ {int maxburst; int /*<<< orphan*/ * filter_data; scalar_t__ addr; } ;
struct imx_ssi {int flags; scalar_t__ irq; int fiq_init; scalar_t__ clk; scalar_t__ dma_init; TYPE_5__ fiq_params; TYPE_2__ dma_params_tx; TYPE_1__ dma_params_rx; scalar_t__ base; int /*<<< orphan*/  filter_data_rx; int /*<<< orphan*/  filter_data_tx; int /*<<< orphan*/  ac97_warm_reset; int /*<<< orphan*/  ac97_reset; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IMX_DMATYPE_SSI ; 
 int /*<<< orphan*/  IMX_SSI_DMABUF_SIZE ; 
 int IMX_SSI_USE_AC97 ; 
 int /*<<< orphan*/  IORESOURCE_DMA ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ SSI_SIER ; 
 scalar_t__ SSI_SRX0 ; 
 scalar_t__ SSI_STX0 ; 
 struct imx_ssi* ac97_ssi ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,struct imx_ssi*) ; 
 scalar_t__ FUNC6 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (TYPE_3__*,struct resource*) ; 
 struct imx_ssi* FUNC8 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 struct snd_soc_dai_driver imx_ac97_dai ; 
 int /*<<< orphan*/  imx_component ; 
 scalar_t__ FUNC9 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct platform_device*,TYPE_5__*) ; 
 int /*<<< orphan*/  imx_ssi_ac97_ops ; 
 struct snd_soc_dai_driver imx_ssi_dai ; 
 scalar_t__ FUNC12 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC13 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct resource* FUNC14 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct imx_ssi*) ; 
 int /*<<< orphan*/  FUNC16 (struct imx_ssi*) ; 
 int FUNC17 (TYPE_3__*,int /*<<< orphan*/ *,struct snd_soc_dai_driver*,int) ; 
 int FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC20 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC21(struct platform_device *pdev)
{
	struct resource *res;
	struct imx_ssi *ssi;
	struct imx_ssi_platform_data *pdata = pdev->dev.platform_data;
	int ret = 0;
	struct snd_soc_dai_driver *dai;

	ssi = FUNC8(&pdev->dev, sizeof(*ssi), GFP_KERNEL);
	if (!ssi)
		return -ENOMEM;
	FUNC5(&pdev->dev, ssi);

	if (pdata) {
		ssi->ac97_reset = pdata->ac97_reset;
		ssi->ac97_warm_reset = pdata->ac97_warm_reset;
		ssi->flags = pdata->flags;
	}

	ssi->irq = FUNC12(pdev, 0);
	if (ssi->irq < 0)
		return ssi->irq;

	ssi->clk = FUNC6(&pdev->dev, NULL);
	if (FUNC0(ssi->clk)) {
		ret = FUNC1(ssi->clk);
		FUNC4(&pdev->dev, "Cannot get the clock: %d\n",
			ret);
		goto failed_clk;
	}
	ret = FUNC3(ssi->clk);
	if (ret)
		goto failed_clk;

	res = FUNC13(pdev, IORESOURCE_MEM, 0);
	ssi->base = FUNC7(&pdev->dev, res);
	if (FUNC0(ssi->base)) {
		ret = FUNC1(ssi->base);
		goto failed_register;
	}

	if (ssi->flags & IMX_SSI_USE_AC97) {
		if (ac97_ssi) {
			FUNC4(&pdev->dev, "AC'97 SSI already registered\n");
			ret = -EBUSY;
			goto failed_register;
		}
		ac97_ssi = ssi;
		FUNC16(ssi);
		dai = &imx_ac97_dai;
	} else
		dai = &imx_ssi_dai;

	FUNC20(0x0, ssi->base + SSI_SIER);

	ssi->dma_params_rx.addr = res->start + SSI_SRX0;
	ssi->dma_params_tx.addr = res->start + SSI_STX0;

	ssi->dma_params_tx.maxburst = 6;
	ssi->dma_params_rx.maxburst = 4;

	ssi->dma_params_tx.filter_data = &ssi->filter_data_tx;
	ssi->dma_params_rx.filter_data = &ssi->filter_data_rx;

	res = FUNC14(pdev, IORESOURCE_DMA, "tx0");
	if (res) {
		FUNC10(&ssi->filter_data_tx, res->start,
			IMX_DMATYPE_SSI);
	}

	res = FUNC14(pdev, IORESOURCE_DMA, "rx0");
	if (res) {
		FUNC10(&ssi->filter_data_rx, res->start,
			IMX_DMATYPE_SSI);
	}

	FUNC15(pdev, ssi);

	ret = FUNC18(&imx_ssi_ac97_ops);
	if (ret != 0) {
		FUNC4(&pdev->dev, "Failed to set AC'97 ops: %d\n", ret);
		goto failed_register;
	}

	ret = FUNC17(&pdev->dev, &imx_component,
					 dai, 1);
	if (ret) {
		FUNC4(&pdev->dev, "register DAI failed\n");
		goto failed_register;
	}

	ssi->fiq_params.irq = ssi->irq;
	ssi->fiq_params.base = ssi->base;
	ssi->fiq_params.dma_params_rx = &ssi->dma_params_rx;
	ssi->fiq_params.dma_params_tx = &ssi->dma_params_tx;

	ssi->fiq_init = FUNC11(pdev, &ssi->fiq_params);
	ssi->dma_init = FUNC9(pdev, IMX_SSI_DMABUF_SIZE);

	if (ssi->fiq_init && ssi->dma_init) {
		ret = ssi->fiq_init;
		goto failed_pcm;
	}

	return 0;

failed_pcm:
	FUNC19(&pdev->dev);
failed_register:
	FUNC2(ssi->clk);
failed_clk:
	FUNC18(NULL);

	return ret;
}
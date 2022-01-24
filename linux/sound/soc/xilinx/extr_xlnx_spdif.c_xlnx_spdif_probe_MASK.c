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
struct spdif_dev_data {scalar_t__ axi_clk; scalar_t__ base; scalar_t__ aclk; int /*<<< orphan*/  chsts_q; scalar_t__ mode; } ;
struct snd_soc_dai_driver {int /*<<< orphan*/  name; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ XSPDIF_SOFT_RESET_REG ; 
 int /*<<< orphan*/  XSPDIF_SOFT_RESET_VALUE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,struct spdif_dev_data*) ; 
 scalar_t__ FUNC7 (struct device*,char*) ; 
 struct spdif_dev_data* FUNC8 (struct device*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct spdif_dev_data*) ; 
 int FUNC11 (struct device*,int /*<<< orphan*/ *,struct snd_soc_dai_driver*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (struct device_node*,char*,scalar_t__*) ; 
 struct resource* FUNC14 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  xlnx_spdif_component ; 
 struct snd_soc_dai_driver xlnx_spdif_rx_dai ; 
 struct snd_soc_dai_driver xlnx_spdif_tx_dai ; 
 int /*<<< orphan*/  xlnx_spdifrx_irq_handler ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	int ret;
	struct resource *res;
	struct snd_soc_dai_driver *dai_drv;
	struct spdif_dev_data *ctx;

	struct device *dev = &pdev->dev;
	struct device_node *node = dev->of_node;

	ctx = FUNC8(dev, sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return -ENOMEM;

	ctx->axi_clk = FUNC7(dev, "s_axi_aclk");
	if (FUNC0(ctx->axi_clk)) {
		ret = FUNC1(ctx->axi_clk);
		FUNC4(dev, "failed to get s_axi_aclk(%d)\n", ret);
		return ret;
	}
	ret = FUNC3(ctx->axi_clk);
	if (ret) {
		FUNC4(dev, "failed to enable s_axi_aclk(%d)\n", ret);
		return ret;
	}

	ctx->base = FUNC9(pdev, 0);
	if (FUNC0(ctx->base)) {
		ret = FUNC1(ctx->base);
		goto clk_err;
	}
	ret = FUNC13(node, "xlnx,spdif-mode", &ctx->mode);
	if (ret < 0) {
		FUNC4(dev, "cannot get SPDIF mode\n");
		goto clk_err;
	}
	if (ctx->mode) {
		dai_drv = &xlnx_spdif_tx_dai;
	} else {
		res = FUNC14(pdev, IORESOURCE_IRQ, 0);
		if (!res) {
			FUNC4(dev, "No IRQ resource found\n");
			ret = -ENODEV;
			goto clk_err;
		}
		ret = FUNC10(dev, res->start,
				       xlnx_spdifrx_irq_handler,
				       0, "XLNX_SPDIF_RX", ctx);
		if (ret) {
			FUNC4(dev, "spdif rx irq request failed\n");
			ret = -ENODEV;
			goto clk_err;
		}

		FUNC12(&ctx->chsts_q);
		dai_drv = &xlnx_spdif_rx_dai;
	}

	ret = FUNC13(node, "xlnx,aud_clk_i", &ctx->aclk);
	if (ret < 0) {
		FUNC4(dev, "cannot get aud_clk_i value\n");
		goto clk_err;
	}

	FUNC6(dev, ctx);

	ret = FUNC11(dev, &xlnx_spdif_component,
					      dai_drv, 1);
	if (ret) {
		FUNC4(dev, "SPDIF component registration failed\n");
		goto clk_err;
	}

	FUNC15(XSPDIF_SOFT_RESET_VALUE, ctx->base + XSPDIF_SOFT_RESET_REG);
	FUNC5(dev, "%s DAI registered\n", dai_drv->name);

clk_err:
	FUNC2(ctx->axi_clk);
	return ret;
}
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
struct rsnd_priv {struct rsnd_dma_ctrl* dma; } ;
struct rsnd_dma_ctrl {int /*<<< orphan*/  base; scalar_t__ dmapp_num; } ;
struct resource {int dummy; } ;
struct platform_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct resource*) ; 
 struct rsnd_dma_ctrl* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mem ; 
 int /*<<< orphan*/  mem_ops ; 
 struct resource* FUNC5 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (struct rsnd_priv*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct device* FUNC8 (struct rsnd_priv*) ; 
 struct platform_device* FUNC9 (struct rsnd_priv*) ; 

int FUNC10(struct rsnd_priv *priv)
{
	struct platform_device *pdev = FUNC9(priv);
	struct device *dev = FUNC8(priv);
	struct rsnd_dma_ctrl *dmac;
	struct resource *res;

	/*
	 * for Gen1
	 */
	if (FUNC6(priv))
		return 0;

	/*
	 * for Gen2 or later
	 */
	res = FUNC5(pdev, IORESOURCE_MEM, "audmapp");
	dmac = FUNC4(dev, sizeof(*dmac), GFP_KERNEL);
	if (!dmac || !res) {
		FUNC2(dev, "dma allocate failed\n");
		return 0; /* it will be PIO mode */
	}

	dmac->dmapp_num = 0;
	dmac->base = FUNC3(dev, res);
	if (FUNC0(dmac->base))
		return FUNC1(dmac->base);

	priv->dma = dmac;

	/* dummy mem mod for debug */
	return FUNC7(NULL, &mem, &mem_ops, NULL, 0, 0);
}
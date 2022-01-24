#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_dai_driver {int dummy; } ;
struct TYPE_8__ {struct device_node* of_node; struct kirkwood_asoc_platform_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct kirkwood_dma_data {scalar_t__ irq; int burst; void* clk; void* extclk; int /*<<< orphan*/  ctl_rec; int /*<<< orphan*/  ctl_play; void* io; } ;
struct kirkwood_asoc_platform_data {int burst; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (void*) ; 
 int /*<<< orphan*/  KIRKWOOD_PLAYCTL_BURST_128 ; 
 int /*<<< orphan*/  KIRKWOOD_PLAYCTL_BURST_32 ; 
 int /*<<< orphan*/  KIRKWOOD_PLAYCTL_SIZE_24 ; 
 int /*<<< orphan*/  KIRKWOOD_RECCTL_BURST_128 ; 
 int /*<<< orphan*/  KIRKWOOD_RECCTL_BURST_32 ; 
 int /*<<< orphan*/  KIRKWOOD_RECCTL_SIZE_24 ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 scalar_t__ FUNC4 (void*,void*) ; 
 int FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,struct kirkwood_dma_data*) ; 
 void* FUNC9 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,void*) ; 
 struct kirkwood_dma_data* FUNC11 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 void* FUNC12 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct snd_soc_dai_driver* kirkwood_i2s_dai ; 
 struct snd_soc_dai_driver* kirkwood_i2s_dai_extclk ; 
 int /*<<< orphan*/  FUNC13 (struct kirkwood_dma_data*) ; 
 int /*<<< orphan*/  kirkwood_soc_component ; 
 scalar_t__ FUNC14 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC15 (TYPE_1__*,int /*<<< orphan*/ *,struct snd_soc_dai_driver*,int) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct kirkwood_asoc_platform_data *data = pdev->dev.platform_data;
	struct snd_soc_dai_driver *soc_dai = kirkwood_i2s_dai;
	struct kirkwood_dma_data *priv;
	struct device_node *np = pdev->dev.of_node;
	int err;

	priv = FUNC11(&pdev->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	FUNC8(&pdev->dev, priv);

	priv->io = FUNC12(pdev, 0);
	if (FUNC1(priv->io))
		return FUNC2(priv->io);

	priv->irq = FUNC14(pdev, 0);
	if (priv->irq < 0)
		return priv->irq;

	if (np) {
		priv->burst = 128;		/* might be 32 or 128 */
	} else if (data) {
		priv->burst = data->burst;
	} else {
		FUNC6(&pdev->dev, "no DT nor platform data ?!\n");
		return -EINVAL;
	}

	priv->clk = FUNC9(&pdev->dev, np ? "internal" : NULL);
	if (FUNC1(priv->clk)) {
		FUNC6(&pdev->dev, "no clock\n");
		return FUNC2(priv->clk);
	}

	priv->extclk = FUNC9(&pdev->dev, "extclk");
	if (FUNC1(priv->extclk)) {
		if (FUNC2(priv->extclk) == -EPROBE_DEFER)
			return -EPROBE_DEFER;
	} else {
		if (FUNC4(priv->extclk, priv->clk)) {
			FUNC10(&pdev->dev, priv->extclk);
			priv->extclk = FUNC0(-EINVAL);
		} else {
			FUNC7(&pdev->dev, "found external clock\n");
			FUNC5(priv->extclk);
			soc_dai = kirkwood_i2s_dai_extclk;
		}
	}

	err = FUNC5(priv->clk);
	if (err < 0)
		return err;

	/* Some sensible defaults - this reflects the powerup values */
	priv->ctl_play = KIRKWOOD_PLAYCTL_SIZE_24;
	priv->ctl_rec = KIRKWOOD_RECCTL_SIZE_24;

	/* Select the burst size */
	if (priv->burst == 32) {
		priv->ctl_play |= KIRKWOOD_PLAYCTL_BURST_32;
		priv->ctl_rec |= KIRKWOOD_RECCTL_BURST_32;
	} else {
		priv->ctl_play |= KIRKWOOD_PLAYCTL_BURST_128;
		priv->ctl_rec |= KIRKWOOD_RECCTL_BURST_128;
	}

	err = FUNC15(&pdev->dev, &kirkwood_soc_component,
					 soc_dai, 2);
	if (err) {
		FUNC6(&pdev->dev, "snd_soc_register_component failed\n");
		goto err_component;
	}

	FUNC13(priv);

	return 0;

 err_component:
	if (!FUNC1(priv->extclk))
		FUNC3(priv->extclk);
	FUNC3(priv->clk);

	return err;
}
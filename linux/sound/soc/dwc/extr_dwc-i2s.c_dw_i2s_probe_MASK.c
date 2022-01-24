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
struct snd_soc_dai_driver {int /*<<< orphan*/  resume; int /*<<< orphan*/  suspend; int /*<<< orphan*/ * ops; } ;
struct resource {int dummy; } ;
struct TYPE_10__ {struct i2s_platform_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; int /*<<< orphan*/  name; } ;
struct i2s_platform_data {int cap; int quirks; int /*<<< orphan*/  i2s_clk_cfg; int /*<<< orphan*/  i2s_reg_comp2; int /*<<< orphan*/  i2s_reg_comp1; } ;
struct dw_i2s_dev {int capability; int quirks; int use_pio; int /*<<< orphan*/  clk; int /*<<< orphan*/  i2s_clk_cfg; int /*<<< orphan*/  i2s_reg_comp2; int /*<<< orphan*/  i2s_reg_comp1; TYPE_1__* dev; int /*<<< orphan*/  i2s_base; } ;

/* Variables and functions */
 int DW_I2S_MASTER ; 
 int DW_I2S_QUIRK_COMP_REG_OFFSET ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2S_COMP_PARAM_1 ; 
 int /*<<< orphan*/  I2S_COMP_PARAM_2 ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct dw_i2s_dev*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,struct resource*) ; 
 void* FUNC8 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dw_i2s_dev*) ; 
 int FUNC10 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_1__*,int /*<<< orphan*/ *,struct snd_soc_dai_driver*,int) ; 
 int FUNC12 (struct dw_i2s_dev*,struct snd_soc_dai_driver*,struct resource*) ; 
 int FUNC13 (struct dw_i2s_dev*,struct snd_soc_dai_driver*,struct resource*,struct i2s_platform_data const*) ; 
 int /*<<< orphan*/  dw_i2s_component ; 
 int /*<<< orphan*/  dw_i2s_dai_ops ; 
 int /*<<< orphan*/  dw_i2s_resume ; 
 int /*<<< orphan*/  dw_i2s_suspend ; 
 int FUNC14 (struct platform_device*) ; 
 int /*<<< orphan*/  i2s_irq_handler ; 
 int FUNC15 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC16 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	const struct i2s_platform_data *pdata = pdev->dev.platform_data;
	struct dw_i2s_dev *dev;
	struct resource *res;
	int ret, irq;
	struct snd_soc_dai_driver *dw_i2s_dai;
	const char *clk_id;

	dev = FUNC8(&pdev->dev, sizeof(*dev), GFP_KERNEL);
	if (!dev)
		return -ENOMEM;

	dw_i2s_dai = FUNC8(&pdev->dev, sizeof(*dw_i2s_dai), GFP_KERNEL);
	if (!dw_i2s_dai)
		return -ENOMEM;

	dw_i2s_dai->ops = &dw_i2s_dai_ops;
	dw_i2s_dai->suspend = dw_i2s_suspend;
	dw_i2s_dai->resume = dw_i2s_resume;

	res = FUNC16(pdev, IORESOURCE_MEM, 0);
	dev->i2s_base = FUNC7(&pdev->dev, res);
	if (FUNC0(dev->i2s_base))
		return FUNC1(dev->i2s_base);

	dev->dev = &pdev->dev;

	irq = FUNC15(pdev, 0);
	if (irq >= 0) {
		ret = FUNC9(&pdev->dev, irq, i2s_irq_handler, 0,
				pdev->name, dev);
		if (ret < 0) {
			FUNC4(&pdev->dev, "failed to request irq\n");
			return ret;
		}
	}

	dev->i2s_reg_comp1 = I2S_COMP_PARAM_1;
	dev->i2s_reg_comp2 = I2S_COMP_PARAM_2;
	if (pdata) {
		dev->capability = pdata->cap;
		clk_id = NULL;
		dev->quirks = pdata->quirks;
		if (dev->quirks & DW_I2S_QUIRK_COMP_REG_OFFSET) {
			dev->i2s_reg_comp1 = pdata->i2s_reg_comp1;
			dev->i2s_reg_comp2 = pdata->i2s_reg_comp2;
		}
		ret = FUNC13(dev, dw_i2s_dai, res, pdata);
	} else {
		clk_id = "i2sclk";
		ret = FUNC12(dev, dw_i2s_dai, res);
	}
	if (ret < 0)
		return ret;

	if (dev->capability & DW_I2S_MASTER) {
		if (pdata) {
			dev->i2s_clk_cfg = pdata->i2s_clk_cfg;
			if (!dev->i2s_clk_cfg) {
				FUNC4(&pdev->dev, "no clock configure method\n");
				return -ENODEV;
			}
		}
		dev->clk = FUNC6(&pdev->dev, clk_id);

		if (FUNC0(dev->clk))
			return FUNC1(dev->clk);

		ret = FUNC3(dev->clk);
		if (ret < 0)
			return ret;
	}

	FUNC5(&pdev->dev, dev);
	ret = FUNC11(&pdev->dev, &dw_i2s_component,
					 dw_i2s_dai, 1);
	if (ret != 0) {
		FUNC4(&pdev->dev, "not able to register dai\n");
		goto err_clk_disable;
	}

	if (!pdata) {
		if (irq >= 0) {
			ret = FUNC14(pdev);
			dev->use_pio = true;
		} else {
			ret = FUNC10(&pdev->dev, NULL,
					0);
			dev->use_pio = false;
		}

		if (ret) {
			FUNC4(&pdev->dev, "could not register pcm: %d\n",
					ret);
			goto err_clk_disable;
		}
	}

	FUNC17(&pdev->dev);
	return 0;

err_clk_disable:
	if (dev->capability & DW_I2S_MASTER)
		FUNC2(dev->clk);
	return ret;
}
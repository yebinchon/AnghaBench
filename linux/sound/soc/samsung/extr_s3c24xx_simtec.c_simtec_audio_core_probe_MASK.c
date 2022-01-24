#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  platform_data; } ;
struct snd_soc_card {TYPE_2__ dev; TYPE_1__* dai_link; } ;
struct platform_device {TYPE_2__ dev; TYPE_1__* dai_link; } ;
struct TYPE_6__ {int dai_fmt; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int SND_SOC_DAIFMT_CBM_CFM ; 
 int SND_SOC_DAIFMT_I2S ; 
 int SND_SOC_DAIFMT_NB_NF ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pdata ; 
 int FUNC8 (struct snd_soc_card*) ; 
 struct snd_soc_card* FUNC9 (char*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_soc_card*) ; 
 int /*<<< orphan*/  FUNC11 (struct snd_soc_card*,struct snd_soc_card*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  simtec_snd_ops ; 
 int /*<<< orphan*/  xtal_clk ; 

int FUNC13(struct platform_device *pdev,
			    struct snd_soc_card *card)
{
	struct platform_device *snd_dev;
	int ret;

	card->dai_link->ops = &simtec_snd_ops;
	card->dai_link->dai_fmt = SND_SOC_DAIFMT_I2S | SND_SOC_DAIFMT_NB_NF |
				  SND_SOC_DAIFMT_CBM_CFM;

	pdata = pdev->dev.platform_data;
	if (!pdata) {
		FUNC6(&pdev->dev, "no platform data supplied\n");
		return -EINVAL;
	}

	FUNC12(pdata);

	xtal_clk = FUNC2(&pdev->dev, "xtal");
	if (FUNC0(xtal_clk)) {
		FUNC6(&pdev->dev, "could not get clkout0\n");
		return -EINVAL;
	}

	FUNC7(&pdev->dev, "xtal rate is %ld\n", FUNC3(xtal_clk));

	ret = FUNC1(&pdev->dev, pdata);
	if (ret)
		goto err_clk;

	snd_dev = FUNC9("soc-audio", -1);
	if (!snd_dev) {
		FUNC6(&pdev->dev, "failed to alloc soc-audio devicec\n");
		ret = -ENOMEM;
		goto err_gpio;
	}

	FUNC11(snd_dev, card);

	ret = FUNC8(snd_dev);
	if (ret) {
		FUNC6(&pdev->dev, "failed to add soc-audio dev\n");
		goto err_pdev;
	}

	FUNC11(pdev, snd_dev);
	return 0;

err_pdev:
	FUNC10(snd_dev);

err_gpio:
	FUNC5(pdata);

err_clk:
	FUNC4(xtal_clk);
	return ret;
}
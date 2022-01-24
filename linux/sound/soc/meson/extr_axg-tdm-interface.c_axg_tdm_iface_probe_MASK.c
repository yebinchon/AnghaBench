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
struct snd_soc_dai_driver {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct axg_tdm_iface {int /*<<< orphan*/ * mclk; int /*<<< orphan*/ * lrclk; int /*<<< orphan*/ * sclk; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int ENOENT ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  axg_tdm_iface_component_drv ; 
 int /*<<< orphan*/ * axg_tdm_iface_dai_drv ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 void* FUNC4 (struct device*,char*) ; 
 struct snd_soc_dai_driver* FUNC5 (struct device*,int,int,int /*<<< orphan*/ ) ; 
 struct axg_tdm_iface* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct device*,int /*<<< orphan*/ *,struct snd_soc_dai_driver*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_soc_dai_driver*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct axg_tdm_iface*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct snd_soc_dai_driver *dai_drv;
	struct axg_tdm_iface *iface;
	int ret, i;

	iface = FUNC6(dev, sizeof(*iface), GFP_KERNEL);
	if (!iface)
		return -ENOMEM;
	FUNC9(pdev, iface);

	/*
	 * Duplicate dai driver: depending on the slot masks configuration
	 * We'll change the number of channel provided by DAI stream, so dpcm
	 * channel merge can be done properly
	 */
	dai_drv = FUNC5(dev, FUNC0(axg_tdm_iface_dai_drv),
			       sizeof(*dai_drv), GFP_KERNEL);
	if (!dai_drv)
		return -ENOMEM;

	for (i = 0; i < FUNC0(axg_tdm_iface_dai_drv); i++)
		FUNC8(&dai_drv[i], &axg_tdm_iface_dai_drv[i],
		       sizeof(*dai_drv));

	/* Bit clock provided on the pad */
	iface->sclk = FUNC4(dev, "sclk");
	if (FUNC1(iface->sclk)) {
		ret = FUNC2(iface->sclk);
		if (ret != -EPROBE_DEFER)
			FUNC3(dev, "failed to get sclk: %d\n", ret);
		return ret;
	}

	/* Sample clock provided on the pad */
	iface->lrclk = FUNC4(dev, "lrclk");
	if (FUNC1(iface->lrclk)) {
		ret = FUNC2(iface->lrclk);
		if (ret != -EPROBE_DEFER)
			FUNC3(dev, "failed to get lrclk: %d\n", ret);
		return ret;
	}

	/*
	 * mclk maybe be missing when the cpu dai is in slave mode and
	 * the codec does not require it to provide a master clock.
	 * At this point, ignore the error if mclk is missing. We'll
	 * throw an error if the cpu dai is master and mclk is missing
	 */
	iface->mclk = FUNC4(dev, "mclk");
	if (FUNC1(iface->mclk)) {
		ret = FUNC2(iface->mclk);
		if (ret == -ENOENT) {
			iface->mclk = NULL;
		} else {
			if (ret != -EPROBE_DEFER)
				FUNC3(dev, "failed to get mclk: %d\n", ret);
			return ret;
		}
	}

	return FUNC7(dev,
					&axg_tdm_iface_component_drv, dai_drv,
					FUNC0(axg_tdm_iface_dai_drv));
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_dai_driver {int dummy; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
struct au1xpsc_audio_data {int cfg; TYPE_1__ dai_drv; int /*<<< orphan*/ * dmaids; int /*<<< orphan*/  mmio; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_DMA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int PSC_AC97CFG_DE_ENABLE ; 
 int PSC_AC97CFG_RT_FIFO8 ; 
 int PSC_AC97CFG_TT_FIFO8 ; 
 int /*<<< orphan*/  FUNC1 (struct au1xpsc_audio_data*) ; 
 unsigned long PSC_CTRL_DISABLE ; 
 int /*<<< orphan*/  FUNC2 (struct au1xpsc_audio_data*) ; 
 unsigned long PSC_SEL_CLK_MASK ; 
 unsigned long PSC_SEL_PS_AC97MODE ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 size_t SNDRV_PCM_STREAM_CAPTURE ; 
 size_t SNDRV_PCM_STREAM_PLAYBACK ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  au1xpsc_ac97_component ; 
 int /*<<< orphan*/  au1xpsc_ac97_dai_template ; 
 struct au1xpsc_audio_data* au1xpsc_ac97_workdata ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct au1xpsc_audio_data* FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct resource* FUNC11 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct au1xpsc_audio_data*) ; 
 int /*<<< orphan*/  psc_ac97_ops ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 () ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	int ret;
	struct resource *dmares;
	unsigned long sel;
	struct au1xpsc_audio_data *wd;

	wd = FUNC7(&pdev->dev, sizeof(struct au1xpsc_audio_data),
			  GFP_KERNEL);
	if (!wd)
		return -ENOMEM;

	FUNC10(&wd->lock);

	wd->mmio = FUNC8(pdev, 0);
	if (FUNC0(wd->mmio))
		return FUNC3(wd->mmio);

	dmares = FUNC11(pdev, IORESOURCE_DMA, 0);
	if (!dmares)
		return -EBUSY;
	wd->dmaids[SNDRV_PCM_STREAM_PLAYBACK] = dmares->start;

	dmares = FUNC11(pdev, IORESOURCE_DMA, 1);
	if (!dmares)
		return -EBUSY;
	wd->dmaids[SNDRV_PCM_STREAM_CAPTURE] = dmares->start;

	/* configuration: max dma trigger threshold, enable ac97 */
	wd->cfg = PSC_AC97CFG_RT_FIFO8 | PSC_AC97CFG_TT_FIFO8 |
		  PSC_AC97CFG_DE_ENABLE;

	/* preserve PSC clock source set up by platform	 */
	sel = FUNC4(FUNC2(wd)) & PSC_SEL_CLK_MASK;
	FUNC5(PSC_CTRL_DISABLE, FUNC1(wd));
	FUNC15(); /* drain writebuffer */
	FUNC5(0, FUNC2(wd));
	FUNC15(); /* drain writebuffer */
	FUNC5(PSC_SEL_PS_AC97MODE | sel, FUNC2(wd));
	FUNC15(); /* drain writebuffer */

	/* name the DAI like this device instance ("au1xpsc-ac97.PSCINDEX") */
	FUNC9(&wd->dai_drv, &au1xpsc_ac97_dai_template,
	       sizeof(struct snd_soc_dai_driver));
	wd->dai_drv.name = FUNC6(&pdev->dev);

	FUNC12(pdev, wd);

	ret = FUNC14(&psc_ac97_ops);
	if (ret)
		return ret;

	ret = FUNC13(&pdev->dev, &au1xpsc_ac97_component,
					 &wd->dai_drv, 1);
	if (ret)
		return ret;

	au1xpsc_ac97_workdata = wd;
	return 0;
}
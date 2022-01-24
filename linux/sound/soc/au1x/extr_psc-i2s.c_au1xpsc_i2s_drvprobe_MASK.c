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
struct au1xpsc_audio_data {int cfg; TYPE_1__ dai_drv; int /*<<< orphan*/ * dmaids; int /*<<< orphan*/  mmio; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct au1xpsc_audio_data*) ; 
 int /*<<< orphan*/  IORESOURCE_DMA ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct au1xpsc_audio_data*) ; 
 unsigned long PSC_CTRL_DISABLE ; 
 int PSC_I2SCFG_RT_FIFO8 ; 
 int PSC_I2SCFG_TT_FIFO8 ; 
 int /*<<< orphan*/  FUNC3 (struct au1xpsc_audio_data*) ; 
 unsigned long PSC_SEL_CLK_MASK ; 
 unsigned long PSC_SEL_PS_I2SMODE ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 size_t SNDRV_PCM_STREAM_CAPTURE ; 
 size_t SNDRV_PCM_STREAM_PLAYBACK ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  au1xpsc_i2s_component ; 
 int /*<<< orphan*/  au1xpsc_i2s_dai_template ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct au1xpsc_audio_data* FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 struct resource* FUNC12 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct au1xpsc_audio_data*) ; 
 int /*<<< orphan*/  FUNC14 () ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct resource *dmares;
	unsigned long sel;
	struct au1xpsc_audio_data *wd;

	wd = FUNC8(&pdev->dev, sizeof(struct au1xpsc_audio_data),
			  GFP_KERNEL);
	if (!wd)
		return -ENOMEM;

	wd->mmio = FUNC9(pdev, 0);
	if (FUNC1(wd->mmio))
		return FUNC4(wd->mmio);

	dmares = FUNC12(pdev, IORESOURCE_DMA, 0);
	if (!dmares)
		return -EBUSY;
	wd->dmaids[SNDRV_PCM_STREAM_PLAYBACK] = dmares->start;

	dmares = FUNC12(pdev, IORESOURCE_DMA, 1);
	if (!dmares)
		return -EBUSY;
	wd->dmaids[SNDRV_PCM_STREAM_CAPTURE] = dmares->start;

	/* preserve PSC clock source set up by platform (dev.platform_data
	 * is already occupied by soc layer)
	 */
	sel = FUNC5(FUNC3(wd)) & PSC_SEL_CLK_MASK;
	FUNC6(PSC_CTRL_DISABLE, FUNC2(wd));
	FUNC14(); /* drain writebuffer */
	FUNC6(PSC_SEL_PS_I2SMODE | sel, FUNC3(wd));
	FUNC6(0, FUNC0(wd));
	FUNC14(); /* drain writebuffer */

	/* preconfigure: set max rx/tx fifo depths */
	wd->cfg |= PSC_I2SCFG_RT_FIFO8 | PSC_I2SCFG_TT_FIFO8;

	/* don't wait for I2S core to become ready now; clocks may not
	 * be running yet; depending on clock input for PSC a wait might
	 * time out.
	 */

	/* name the DAI like this device instance ("au1xpsc-i2s.PSCINDEX") */
	FUNC11(&wd->dai_drv, &au1xpsc_i2s_dai_template,
	       sizeof(struct snd_soc_dai_driver));
	wd->dai_drv.name = FUNC7(&pdev->dev);

	FUNC13(pdev, wd);

	return FUNC10(&pdev->dev,
				&au1xpsc_i2s_component, &wd->dai_drv, 1);
}
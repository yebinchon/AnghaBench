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
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;
struct au1xpsc_audio_data {int /*<<< orphan*/ * dmaids; int /*<<< orphan*/  mmio; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_DMA ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 size_t SNDRV_PCM_STREAM_CAPTURE ; 
 size_t SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  au1xi2s_component ; 
 int /*<<< orphan*/  au1xi2s_dai_driver ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct au1xpsc_audio_data* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct resource* FUNC3 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,struct au1xpsc_audio_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct resource*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct resource *iores, *dmares;
	struct au1xpsc_audio_data *ctx;

	ctx = FUNC1(&pdev->dev, sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return -ENOMEM;

	iores = FUNC3(pdev, IORESOURCE_MEM, 0);
	if (!iores)
		return -ENODEV;

	if (!FUNC2(&pdev->dev, iores->start,
				     FUNC5(iores),
				     pdev->name))
		return -EBUSY;

	ctx->mmio = FUNC0(&pdev->dev, iores->start,
					 FUNC5(iores));
	if (!ctx->mmio)
		return -EBUSY;

	dmares = FUNC3(pdev, IORESOURCE_DMA, 0);
	if (!dmares)
		return -EBUSY;
	ctx->dmaids[SNDRV_PCM_STREAM_PLAYBACK] = dmares->start;

	dmares = FUNC3(pdev, IORESOURCE_DMA, 1);
	if (!dmares)
		return -EBUSY;
	ctx->dmaids[SNDRV_PCM_STREAM_CAPTURE] = dmares->start;

	FUNC4(pdev, ctx);

	return FUNC6(&pdev->dev, &au1xi2s_component,
					  &au1xi2s_dai_driver, 1);
}
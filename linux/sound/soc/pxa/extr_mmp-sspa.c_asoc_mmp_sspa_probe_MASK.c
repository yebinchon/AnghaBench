#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sspa_priv {unsigned int dai_fmt; void* audio_clk; void* sysclk; TYPE_1__* sspa; int /*<<< orphan*/ * dma_params; } ;
struct ssp_device {int dummy; } ;
struct snd_dmaengine_dai_dma_data {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {void* clk; void* mmio_base; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 void* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 void* FUNC8 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  mmp_sspa_component ; 
 int /*<<< orphan*/  mmp_sspa_dai ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct sspa_priv*) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct sspa_priv *priv;

	priv = FUNC7(&pdev->dev,
				sizeof(struct sspa_priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->sspa = FUNC7(&pdev->dev,
				sizeof(struct ssp_device), GFP_KERNEL);
	if (priv->sspa == NULL)
		return -ENOMEM;

	priv->dma_params = FUNC6(&pdev->dev,
			2, sizeof(struct snd_dmaengine_dai_dma_data),
			GFP_KERNEL);
	if (priv->dma_params == NULL)
		return -ENOMEM;

	priv->sspa->mmio_base = FUNC8(pdev, 0);
	if (FUNC0(priv->sspa->mmio_base))
		return FUNC1(priv->sspa->mmio_base);

	priv->sspa->clk = FUNC5(&pdev->dev, NULL);
	if (FUNC0(priv->sspa->clk))
		return FUNC1(priv->sspa->clk);

	priv->audio_clk = FUNC3(NULL, "mmp-audio");
	if (FUNC0(priv->audio_clk))
		return FUNC1(priv->audio_clk);

	priv->sysclk = FUNC3(NULL, "mmp-sysclk");
	if (FUNC0(priv->sysclk)) {
		FUNC4(priv->audio_clk);
		return FUNC1(priv->sysclk);
	}
	FUNC2(priv->audio_clk);
	priv->dai_fmt = (unsigned int) -1;
	FUNC10(pdev, priv);

	return FUNC9(&pdev->dev, &mmp_sspa_component,
					       &mmp_sspa_dai, 1);
}
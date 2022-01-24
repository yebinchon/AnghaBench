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
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int rate; } ;
struct mtk_base_afe {struct mt8173_afe_private* platform_priv; } ;
struct mt8173_afe_private {int /*<<< orphan*/ * clocks; } ;

/* Variables and functions */
 size_t MT8173_CLK_I2S1_M ; 
 size_t MT8173_CLK_I2S2_M ; 
 int /*<<< orphan*/  FUNC0 (struct mtk_base_afe*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mtk_base_afe*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_base_afe*,int) ; 
 struct mtk_base_afe* FUNC3 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream,
				  struct snd_soc_dai *dai)
{
	struct snd_pcm_runtime * const runtime = substream->runtime;
	struct mtk_base_afe *afe = FUNC3(dai);
	struct mt8173_afe_private *afe_priv = afe->platform_priv;
	int ret;

	FUNC0(afe, afe_priv->clocks[MT8173_CLK_I2S1_M],
				 runtime->rate * 256, NULL, 0);
	FUNC0(afe, afe_priv->clocks[MT8173_CLK_I2S2_M],
				 runtime->rate * 256, NULL, 0);
	/* config I2S */
	ret = FUNC1(afe, substream->runtime->rate);
	if (ret)
		return ret;

	FUNC2(afe, true);

	return 0;
}
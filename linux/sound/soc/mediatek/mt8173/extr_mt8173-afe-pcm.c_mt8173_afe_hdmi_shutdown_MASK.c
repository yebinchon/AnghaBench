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
struct snd_soc_dai {scalar_t__ active; } ;
struct snd_pcm_substream {int dummy; } ;
struct mtk_base_afe {struct mt8173_afe_private* platform_priv; } ;
struct mt8173_afe_private {int /*<<< orphan*/ * clocks; } ;

/* Variables and functions */
 size_t MT8173_CLK_I2S3_B ; 
 size_t MT8173_CLK_I2S3_M ; 
 int /*<<< orphan*/  FUNC0 (struct mtk_base_afe*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mtk_base_afe* FUNC1 (struct snd_soc_dai*) ; 

__attribute__((used)) static void FUNC2(struct snd_pcm_substream *substream,
				     struct snd_soc_dai *dai)
{
	struct mtk_base_afe *afe = FUNC1(dai);
	struct mt8173_afe_private *afe_priv = afe->platform_priv;

	if (dai->active)
		return;

	FUNC0(afe, afe_priv->clocks[MT8173_CLK_I2S3_M],
				     afe_priv->clocks[MT8173_CLK_I2S3_B]);
}
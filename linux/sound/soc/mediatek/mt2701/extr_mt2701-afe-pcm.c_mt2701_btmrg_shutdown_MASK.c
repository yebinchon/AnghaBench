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
struct snd_pcm_substream {size_t stream; } ;
struct mtk_base_afe {int /*<<< orphan*/  regmap; struct mt2701_afe_private* platform_priv; } ;
struct mt2701_afe_private {scalar_t__* mrg_enable; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFE_DAIBT_CON0 ; 
 int /*<<< orphan*/  AFE_DAIBT_CON0_DAIBT_EN ; 
 int /*<<< orphan*/  AFE_MRGIF_CON ; 
 int /*<<< orphan*/  AFE_MRGIF_CON_MRG_EN ; 
 int /*<<< orphan*/  AFE_MRGIF_CON_MRG_I2S_EN ; 
 int /*<<< orphan*/  FUNC0 (struct mtk_base_afe*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mtk_base_afe* FUNC2 (struct snd_soc_dai*) ; 

__attribute__((used)) static void FUNC3(struct snd_pcm_substream *substream,
				  struct snd_soc_dai *dai)
{
	struct mtk_base_afe *afe = FUNC2(dai);
	struct mt2701_afe_private *afe_priv = afe->platform_priv;

	/* if the other direction stream is not occupied */
	if (!afe_priv->mrg_enable[!substream->stream]) {
		FUNC1(afe->regmap, AFE_DAIBT_CON0,
				   AFE_DAIBT_CON0_DAIBT_EN, 0);
		FUNC1(afe->regmap, AFE_MRGIF_CON,
				   AFE_MRGIF_CON_MRG_EN, 0);
		FUNC1(afe->regmap, AFE_MRGIF_CON,
				   AFE_MRGIF_CON_MRG_I2S_EN, 0);
		FUNC0(afe);
	}

	afe_priv->mrg_enable[substream->stream] = 0;
}
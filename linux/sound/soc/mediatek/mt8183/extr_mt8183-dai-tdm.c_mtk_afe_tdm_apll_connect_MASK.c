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
struct snd_soc_dapm_widget {int /*<<< orphan*/  name; int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {int dummy; } ;
struct mtk_base_afe {struct mt8183_afe_private* platform_priv; } ;
struct mtk_afe_tdm_priv {int mclk_apll; } ;
struct mt8183_afe_private {struct mtk_afe_tdm_priv** dai_priv; } ;

/* Variables and functions */
 size_t MT8183_DAI_TDM ; 
 int FUNC0 (struct mtk_base_afe*,int /*<<< orphan*/ ) ; 
 struct mtk_base_afe* FUNC1 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_dapm_widget *source,
				    struct snd_soc_dapm_widget *sink)
{
	struct snd_soc_dapm_widget *w = sink;
	struct snd_soc_component *cmpnt = FUNC2(w->dapm);
	struct mtk_base_afe *afe = FUNC1(cmpnt);
	struct mt8183_afe_private *afe_priv = afe->platform_priv;
	struct mtk_afe_tdm_priv *tdm_priv = afe_priv->dai_priv[MT8183_DAI_TDM];
	int cur_apll;

	/* which apll */
	cur_apll = FUNC0(afe, source->name);

	return (tdm_priv->mclk_apll == cur_apll) ? 1 : 0;
}
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
struct mtk_base_afe {int /*<<< orphan*/  dev; struct mt2701_afe_private* platform_priv; } ;
struct mt2701_i2s_path {struct clk* asrco_ck; struct clk** hop_ck; struct clk* mclk_ck; struct clk* div_ck; struct clk* sel_ck; } ;
struct mt2701_afe_private {struct clk* mrgif_ck; struct mt2701_i2s_path* i2s_path; TYPE_1__* soc; struct clk** base_ck; } ;
struct clk {int dummy; } ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_2__ {int i2s_num; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int MT2701_BASE_CLK_NUM ; 
 int FUNC1 (struct clk*) ; 
 size_t SNDRV_PCM_STREAM_CAPTURE ; 
 size_t SNDRV_PCM_STREAM_PLAYBACK ; 
 char** base_clks ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 void* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int) ; 

int FUNC5(struct mtk_base_afe *afe)
{
	struct mt2701_afe_private *afe_priv = afe->platform_priv;
	int i;

	for (i = 0; i < MT2701_BASE_CLK_NUM; i++) {
		afe_priv->base_ck[i] = FUNC3(afe->dev, base_clks[i]);
		if (FUNC0(afe_priv->base_ck[i])) {
			FUNC2(afe->dev, "failed to get %s\n", base_clks[i]);
			return FUNC1(afe_priv->base_ck[i]);
		}
	}

	/* Get I2S related clocks */
	for (i = 0; i < afe_priv->soc->i2s_num; i++) {
		struct mt2701_i2s_path *i2s_path = &afe_priv->i2s_path[i];
		struct clk *i2s_ck;
		char name[13];

		FUNC4(name, sizeof(name), "i2s%d_src_sel", i);
		i2s_path->sel_ck = FUNC3(afe->dev, name);
		if (FUNC0(i2s_path->sel_ck)) {
			FUNC2(afe->dev, "failed to get %s\n", name);
			return FUNC1(i2s_path->sel_ck);
		}

		FUNC4(name, sizeof(name), "i2s%d_src_div", i);
		i2s_path->div_ck = FUNC3(afe->dev, name);
		if (FUNC0(i2s_path->div_ck)) {
			FUNC2(afe->dev, "failed to get %s\n", name);
			return FUNC1(i2s_path->div_ck);
		}

		FUNC4(name, sizeof(name), "i2s%d_mclk_en", i);
		i2s_path->mclk_ck = FUNC3(afe->dev, name);
		if (FUNC0(i2s_path->mclk_ck)) {
			FUNC2(afe->dev, "failed to get %s\n", name);
			return FUNC1(i2s_path->mclk_ck);
		}

		FUNC4(name, sizeof(name), "i2so%d_hop_ck", i);
		i2s_ck = FUNC3(afe->dev, name);
		if (FUNC0(i2s_ck)) {
			FUNC2(afe->dev, "failed to get %s\n", name);
			return FUNC1(i2s_ck);
		}
		i2s_path->hop_ck[SNDRV_PCM_STREAM_PLAYBACK] = i2s_ck;

		FUNC4(name, sizeof(name), "i2si%d_hop_ck", i);
		i2s_ck = FUNC3(afe->dev, name);
		if (FUNC0(i2s_ck)) {
			FUNC2(afe->dev, "failed to get %s\n", name);
			return FUNC1(i2s_ck);
		}
		i2s_path->hop_ck[SNDRV_PCM_STREAM_CAPTURE] = i2s_ck;

		FUNC4(name, sizeof(name), "asrc%d_out_ck", i);
		i2s_path->asrco_ck = FUNC3(afe->dev, name);
		if (FUNC0(i2s_path->asrco_ck)) {
			FUNC2(afe->dev, "failed to get %s\n", name);
			return FUNC1(i2s_path->asrco_ck);
		}
	}

	/* Some platforms may support BT path */
	afe_priv->mrgif_ck = FUNC3(afe->dev, "audio_mrgif_pd");
	if (FUNC0(afe_priv->mrgif_ck)) {
		if (FUNC1(afe_priv->mrgif_ck) == -EPROBE_DEFER)
			return -EPROBE_DEFER;

		afe_priv->mrgif_ck = NULL;
	}

	return 0;
}
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
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct cs35l33_private {int /*<<< orphan*/  regmap; scalar_t__ is_tdm_mode; int /*<<< orphan*/  mclk_int; } ;
struct TYPE_2__ {int int_fs_ratio; int adsp_rate; } ;

/* Variables and functions */
 int CS35L33_ADSP_FS ; 
 int CS35L33_AUDIN_RX_DEPTH ; 
 int CS35L33_AUDIN_RX_DEPTH_SHIFT ; 
 int /*<<< orphan*/  CS35L33_CLK_CTL ; 
 int CS35L33_INT_FS_RATE ; 
 int /*<<< orphan*/  CS35L33_RX_AUD ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* cs35l33_mclk_coeffs ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_hw_params*) ; 
 int FUNC3 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct cs35l33_private* FUNC5 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream,
				 struct snd_pcm_hw_params *params,
				 struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	struct cs35l33_private *priv = FUNC5(component);
	int sample_size = FUNC3(params);
	int coeff = FUNC0(priv->mclk_int, FUNC2(params));

	if (coeff < 0)
		return coeff;

	FUNC4(priv->regmap, CS35L33_CLK_CTL,
		CS35L33_ADSP_FS | CS35L33_INT_FS_RATE,
		cs35l33_mclk_coeffs[coeff].int_fs_ratio
		| cs35l33_mclk_coeffs[coeff].adsp_rate);

	if (priv->is_tdm_mode) {
		sample_size = (sample_size / 8) - 1;
		if (sample_size > 2)
			sample_size = 2;
		FUNC4(priv->regmap, CS35L33_RX_AUD,
			CS35L33_AUDIN_RX_DEPTH,
			sample_size << CS35L33_AUDIN_RX_DEPTH_SHIFT);
	}

	FUNC1(component->dev, "sample rate=%d, bits per sample=%d\n",
		FUNC2(params), FUNC3(params));

	return 0;
}
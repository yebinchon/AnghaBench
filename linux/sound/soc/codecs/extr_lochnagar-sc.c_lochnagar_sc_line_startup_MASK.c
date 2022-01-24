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
struct snd_soc_dai {int /*<<< orphan*/  dev; struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int /*<<< orphan*/  runtime; } ;
struct lochnagar_sc_priv {int /*<<< orphan*/  mclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_CHANNELS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  lochnagar_sc_chan_constraint ; 
 int FUNC2 (struct snd_pcm_substream*,struct snd_soc_dai*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct lochnagar_sc_priv* FUNC4 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream,
				     struct snd_soc_dai *dai)
{
	struct snd_soc_component *comp = dai->component;
	struct lochnagar_sc_priv *priv = FUNC4(comp);
	int ret;

	ret = FUNC0(priv->mclk);
	if (ret < 0) {
		FUNC1(dai->dev, "Failed to enable MCLK: %d\n", ret);
		return ret;
	}

	ret = FUNC2(substream, dai);
	if (ret)
		return ret;

	return FUNC3(substream->runtime, 0,
					  SNDRV_PCM_HW_PARAM_CHANNELS,
					  &lochnagar_sc_chan_constraint);
}
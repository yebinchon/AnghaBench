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
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int /*<<< orphan*/  runtime; } ;
struct lochnagar_sc_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_FRAME_BITS ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_RATE ; 
 int /*<<< orphan*/  lochnagar_sc_hw_rule_rate ; 
 int /*<<< orphan*/  lochnagar_sc_rate_constraint ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct lochnagar_sc_priv*,int /*<<< orphan*/ ,int) ; 
 struct lochnagar_sc_priv* FUNC2 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream,
				struct snd_soc_dai *dai)
{
	struct snd_soc_component *comp = dai->component;
	struct lochnagar_sc_priv *priv = FUNC2(comp);
	int ret;

	ret = FUNC0(substream->runtime, 0,
					 SNDRV_PCM_HW_PARAM_RATE,
					 &lochnagar_sc_rate_constraint);
	if (ret)
		return ret;

	return FUNC1(substream->runtime, 0,
				   SNDRV_PCM_HW_PARAM_RATE,
				   lochnagar_sc_hw_rule_rate, priv,
				   SNDRV_PCM_HW_PARAM_FRAME_BITS, -1);
}
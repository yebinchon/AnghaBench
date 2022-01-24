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
struct snd_soc_dai {struct device* dev; struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_ratnum {int num; int den_min; int den_max; int den_step; } ;
struct snd_pcm_substream {int /*<<< orphan*/  runtime; } ;
struct snd_pcm_hw_constraint_ratnums {int nrats; struct snd_ratnum* rats; } ;
struct pcm512x_priv {int /*<<< orphan*/  sclk; scalar_t__ pll_out; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_CHANNELS ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_FRAME_BITS ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_RATE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 void* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pcm512x_hw_rule_rate ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct snd_pcm_hw_constraint_ratnums*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pcm512x_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct pcm512x_priv* FUNC7 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC8(struct snd_pcm_substream *substream,
				      struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	struct pcm512x_priv *pcm512x = FUNC7(component);
	struct device *dev = dai->dev;
	struct snd_pcm_hw_constraint_ratnums *constraints_no_pll;
	struct snd_ratnum *rats_no_pll;

	if (FUNC0(pcm512x->sclk)) {
		FUNC3(dev, "Need SCLK for master mode: %ld\n",
			FUNC1(pcm512x->sclk));
		return FUNC1(pcm512x->sclk);
	}

	if (pcm512x->pll_out)
		return FUNC6(substream->runtime, 0,
					   SNDRV_PCM_HW_PARAM_RATE,
					   pcm512x_hw_rule_rate,
					   pcm512x,
					   SNDRV_PCM_HW_PARAM_FRAME_BITS,
					   SNDRV_PCM_HW_PARAM_CHANNELS, -1);

	constraints_no_pll = FUNC4(dev, sizeof(*constraints_no_pll),
					  GFP_KERNEL);
	if (!constraints_no_pll)
		return -ENOMEM;
	constraints_no_pll->nrats = 1;
	rats_no_pll = FUNC4(dev, sizeof(*rats_no_pll), GFP_KERNEL);
	if (!rats_no_pll)
		return -ENOMEM;
	constraints_no_pll->rats = rats_no_pll;
	rats_no_pll->num = FUNC2(pcm512x->sclk) / 64;
	rats_no_pll->den_min = 1;
	rats_no_pll->den_max = 128;
	rats_no_pll->den_step = 1;

	return FUNC5(substream->runtime, 0,
					     SNDRV_PCM_HW_PARAM_RATE,
					     constraints_no_pll);
}
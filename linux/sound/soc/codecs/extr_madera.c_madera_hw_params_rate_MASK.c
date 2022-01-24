#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_dai {int id; TYPE_1__* driver; struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct madera_priv {int /*<<< orphan*/  rate_lock; TYPE_2__* madera; struct madera_dai_priv* dai; } ;
struct madera_dai_priv {int clk; } ;
struct TYPE_4__ {int /*<<< orphan*/  regmap; } ;
struct TYPE_3__ {int base; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 int EBUSY ; 
 int EINVAL ; 
 unsigned int MADERA_AIF1_RATE_MASK ; 
 int MADERA_AIF1_RATE_SHIFT ; 
 int MADERA_AIF_RATE_CTRL ; 
 unsigned int MADERA_ASYNC_SAMPLE_RATE_1 ; 
 unsigned int MADERA_ASYNC_SAMPLE_RATE_2 ; 
#define  MADERA_CLK_ASYNCCLK_1 132 
#define  MADERA_CLK_ASYNCCLK_2 131 
#define  MADERA_CLK_SYSCLK_1 130 
#define  MADERA_CLK_SYSCLK_2 129 
#define  MADERA_CLK_SYSCLK_3 128 
 unsigned int MADERA_SAMPLE_RATE_1 ; 
 unsigned int MADERA_SAMPLE_RATE_1_MASK ; 
 unsigned int MADERA_SAMPLE_RATE_2 ; 
 unsigned int MADERA_SAMPLE_RATE_3 ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_dai*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_dai*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct madera_priv*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct madera_priv*) ; 
 scalar_t__* madera_sr_vals ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct snd_pcm_hw_params*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int,unsigned int*) ; 
 struct madera_priv* FUNC9 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_soc_component*,int,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC11(struct snd_pcm_substream *substream,
				 struct snd_pcm_hw_params *params,
				 struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	struct madera_priv *priv = FUNC9(component);
	struct madera_dai_priv *dai_priv = &priv->dai[dai->id - 1];
	int base = dai->driver->base;
	int i, sr_val;
	unsigned int reg, cur, tar;
	int ret;

	for (i = 0; i < FUNC0(madera_sr_vals); i++)
		if (madera_sr_vals[i] == FUNC7(params))
			break;

	if (i == FUNC0(madera_sr_vals)) {
		FUNC1(dai, "Unsupported sample rate %dHz\n",
			       FUNC7(params));
		return -EINVAL;
	}
	sr_val = i;

	switch (dai_priv->clk) {
	case MADERA_CLK_SYSCLK_1:
		reg = MADERA_SAMPLE_RATE_1;
		tar = 0 << MADERA_AIF1_RATE_SHIFT;
		break;
	case MADERA_CLK_SYSCLK_2:
		reg = MADERA_SAMPLE_RATE_2;
		tar = 1 << MADERA_AIF1_RATE_SHIFT;
		break;
	case MADERA_CLK_SYSCLK_3:
		reg = MADERA_SAMPLE_RATE_3;
		tar = 2 << MADERA_AIF1_RATE_SHIFT;
		break;
	case MADERA_CLK_ASYNCCLK_1:
		reg = MADERA_ASYNC_SAMPLE_RATE_1,
		tar = 8 << MADERA_AIF1_RATE_SHIFT;
		break;
	case MADERA_CLK_ASYNCCLK_2:
		reg = MADERA_ASYNC_SAMPLE_RATE_2,
		tar = 9 << MADERA_AIF1_RATE_SHIFT;
		break;
	default:
		FUNC1(dai, "Invalid clock %d\n", dai_priv->clk);
		return -EINVAL;
	}

	FUNC10(component, reg, MADERA_SAMPLE_RATE_1_MASK,
				      sr_val);

	if (!base)
		return 0;

	ret = FUNC8(priv->madera->regmap,
			  base + MADERA_AIF_RATE_CTRL, &cur);
	if (ret != 0) {
		FUNC1(dai, "Failed to check rate: %d\n", ret);
		return ret;
	}

	if ((cur & MADERA_AIF1_RATE_MASK) == (tar & MADERA_AIF1_RATE_MASK))
		return 0;

	FUNC5(&priv->rate_lock);

	if (!FUNC3(priv, base + MADERA_AIF_RATE_CTRL)) {
		FUNC2(dai, "Cannot change rate while active\n");
		ret = -EBUSY;
		goto out;
	}

	/* Guard the rate change with SYSCLK cycles */
	FUNC4(priv);
	FUNC10(component, base + MADERA_AIF_RATE_CTRL,
				      MADERA_AIF1_RATE_MASK, tar);
	FUNC4(priv);

out:
	FUNC6(&priv->rate_lock);

	return ret;
}
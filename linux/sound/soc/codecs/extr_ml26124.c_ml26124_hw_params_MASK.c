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
struct ml26124_priv {int mclk; int rate; scalar_t__ clk_in; struct snd_pcm_substream* substream; } ;
struct TYPE_2__ {int pllnl; int pllnh; int pllml; int pllmh; int plldiv; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  ML26124_CLK_CTL ; 
 int /*<<< orphan*/  ML26124_PLLDIV ; 
 int /*<<< orphan*/  ML26124_PLLMH ; 
 int /*<<< orphan*/  ML26124_PLLML ; 
 int /*<<< orphan*/  ML26124_PLLNH ; 
 int /*<<< orphan*/  ML26124_PLLNL ; 
 int /*<<< orphan*/  ML26124_SMPLING_RATE ; 
 TYPE_1__* coeff_div ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (struct snd_pcm_hw_params*) ; 
 struct ml26124_priv* FUNC5 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream,
			    struct snd_pcm_hw_params *hw_params,
			    struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	struct ml26124_priv *priv = FUNC5(component);
	int i = FUNC2(priv->mclk, FUNC4(hw_params));
	int srate;

	if (i < 0)
		return i;
	priv->substream = substream;
	priv->rate = FUNC4(hw_params);

	if (priv->clk_in) {
		switch (priv->mclk / FUNC4(hw_params)) {
		case 256:
			FUNC6(component, ML26124_CLK_CTL,
					    FUNC0(0) | FUNC0(1), 1);
			break;
		case 512:
			FUNC6(component, ML26124_CLK_CTL,
					    FUNC0(0) | FUNC0(1), 2);
			break;
		case 1024:
			FUNC6(component, ML26124_CLK_CTL,
					    FUNC0(0) | FUNC0(1), 3);
			break;
		default:
			FUNC1(component->dev, "Unsupported MCLKI\n");
			break;
		}
	} else {
		FUNC6(component, ML26124_CLK_CTL,
				    FUNC0(0) | FUNC0(1), 0);
	}

	srate = FUNC3(FUNC4(hw_params));
	if (srate < 0)
		return srate;

	FUNC6(component, ML26124_SMPLING_RATE, 0xf, srate);
	FUNC6(component, ML26124_PLLNL, 0xff, coeff_div[i].pllnl);
	FUNC6(component, ML26124_PLLNH, 0x1, coeff_div[i].pllnh);
	FUNC6(component, ML26124_PLLML, 0xff, coeff_div[i].pllml);
	FUNC6(component, ML26124_PLLMH, 0x3f, coeff_div[i].pllmh);
	FUNC6(component, ML26124_PLLDIV, 0x1f, coeff_div[i].plldiv);

	return 0;
}
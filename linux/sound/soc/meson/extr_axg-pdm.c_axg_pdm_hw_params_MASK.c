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
struct snd_soc_dai {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct axg_pdm {int /*<<< orphan*/  dclk; int /*<<< orphan*/  map; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PDM_CTRL ; 
 unsigned int PDM_CTRL_OUT_MODE ; 
 unsigned int FUNC0 (struct axg_pdm*) ; 
 int /*<<< orphan*/  FUNC1 (struct axg_pdm*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct axg_pdm*) ; 
 int FUNC3 (struct axg_pdm*,unsigned int,unsigned int) ; 
 int FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_pcm_hw_params*) ; 
 unsigned int FUNC7 (struct snd_pcm_hw_params*) ; 
 int FUNC8 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 struct axg_pdm* FUNC10 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC11(struct snd_pcm_substream *substream,
			     struct snd_pcm_hw_params *params,
			     struct snd_soc_dai *dai)
{
	struct axg_pdm *priv = FUNC10(dai);
	unsigned int os = FUNC0(priv);
	unsigned int rate = FUNC7(params);
	unsigned int val;
	int ret;

	switch (FUNC8(params)) {
	case 24:
		val = PDM_CTRL_OUT_MODE;
		break;
	case 32:
		val = 0;
		break;
	default:
		FUNC5(dai->dev, "unsupported sample width\n");
		return -EINVAL;
	}

	FUNC9(priv->map, PDM_CTRL, PDM_CTRL_OUT_MODE, val);

	ret = FUNC3(priv, os, rate);
	if (ret) {
		FUNC5(dai->dev, "failed to set system clock\n");
		return ret;
	}

	ret = FUNC4(priv->dclk, rate * os);
	if (ret) {
		FUNC5(dai->dev, "failed to set dclk\n");
		return ret;
	}

	ret = FUNC2(priv);
	if (ret) {
		FUNC5(dai->dev, "invalid clock setting\n");
		return ret;
	}

	FUNC1(priv, FUNC6(params));

	return 0;
}
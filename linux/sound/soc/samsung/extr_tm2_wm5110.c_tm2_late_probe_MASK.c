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
struct tm2_machine_priv {int /*<<< orphan*/  component; } ;
struct snd_soc_pcm_runtime {struct snd_soc_dai* codec_dai; } ;
struct snd_soc_dai {int /*<<< orphan*/  dev; int /*<<< orphan*/  component; } ;
struct snd_soc_card {TYPE_1__* dai_link; } ;
struct TYPE_4__ {int /*<<< orphan*/  dlc; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARIZONA_CLK_ASYNCCLK ; 
 int /*<<< orphan*/  ARIZONA_CLK_SYSCLK ; 
 int /*<<< orphan*/  FUNC0 (unsigned int*) ; 
 int ENODEV ; 
 size_t TM2_DAI_AIF1 ; 
 size_t TM2_DAI_AIF2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 struct tm2_machine_priv* FUNC2 (struct snd_soc_card*) ; 
 int FUNC3 (struct snd_soc_dai*,int /*<<< orphan*/ ,unsigned int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct snd_soc_dai*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct snd_soc_dai*,int,int,int,int) ; 
 struct snd_soc_dai* FUNC6 (int /*<<< orphan*/ *) ; 
 struct snd_soc_pcm_runtime* FUNC7 (struct snd_soc_card*,int /*<<< orphan*/ ) ; 
 TYPE_2__ tm2_speaker_amp_dev ; 

__attribute__((used)) static int FUNC8(struct snd_soc_card *card)
{
	struct tm2_machine_priv *priv = FUNC2(card);
	unsigned int ch_map[] = { 0, 1 };
	struct snd_soc_dai *amp_pdm_dai;
	struct snd_soc_pcm_runtime *rtd;
	struct snd_soc_dai *aif1_dai;
	struct snd_soc_dai *aif2_dai;
	int ret;

	rtd = FUNC7(card, card->dai_link[TM2_DAI_AIF1].name);
	aif1_dai = rtd->codec_dai;
	priv->component = rtd->codec_dai->component;

	ret = FUNC4(aif1_dai, ARIZONA_CLK_SYSCLK, 0, 0);
	if (ret < 0) {
		FUNC1(aif1_dai->dev, "Failed to set SYSCLK: %d\n", ret);
		return ret;
	}

	rtd = FUNC7(card, card->dai_link[TM2_DAI_AIF2].name);
	aif2_dai = rtd->codec_dai;

	ret = FUNC4(aif2_dai, ARIZONA_CLK_ASYNCCLK, 0, 0);
	if (ret < 0) {
		FUNC1(aif2_dai->dev, "Failed to set ASYNCCLK: %d\n", ret);
		return ret;
	}

	amp_pdm_dai = FUNC6(&tm2_speaker_amp_dev.dlc);
	if (!amp_pdm_dai)
		return -ENODEV;

	/* Set the MAX98504 V/I sense PDM Tx DAI channel mapping */
	ret = FUNC3(amp_pdm_dai, FUNC0(ch_map),
					  ch_map, 0, NULL);
	if (ret < 0)
		return ret;

	ret = FUNC5(amp_pdm_dai, 0x3, 0x0, 2, 16);
	if (ret < 0)
		return ret;

	return 0;
}
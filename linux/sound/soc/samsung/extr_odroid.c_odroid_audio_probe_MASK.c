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
struct snd_soc_dai_link {int num_codecs; int dpcm_capture; TYPE_1__* cpus; } ;
struct snd_soc_card {int fully_routed; struct snd_soc_dai_link* dai_link; void* num_links; void* num_dapm_routes; void* dapm_routes; int /*<<< orphan*/  owner; struct device* dev; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct of_phandle_args {struct device_node* np; } ;
struct odroid_priv {void* sclk_i2s; void* clk_i2s_bus; int /*<<< orphan*/  lock; struct snd_soc_card card; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dai_name; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int) ; 
 struct odroid_priv* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device*,struct snd_soc_card*) ; 
 void* odroid_card_dais ; 
 void* odroid_dapm_routes ; 
 void* FUNC7 (struct device_node*,char*) ; 
 int FUNC8 (struct device_node*,char*,char*) ; 
 struct device_node* FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct device_node*) ; 
 struct device_node* FUNC11 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct device_node*,char*,char*,int,struct of_phandle_args*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct snd_soc_card*,struct odroid_priv*) ; 
 int FUNC15 (struct of_phandle_args*,int /*<<< orphan*/ *) ; 
 int FUNC16 (struct device*,struct device_node*,struct snd_soc_dai_link*) ; 
 int FUNC17 (struct snd_soc_card*,char*) ; 
 int FUNC18 (struct snd_soc_card*,char*) ; 
 int FUNC19 (struct snd_soc_card*,char*) ; 
 int /*<<< orphan*/  FUNC20 (struct snd_soc_dai_link*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC22(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *cpu_dai = NULL;
	struct device_node *cpu, *codec;
	struct odroid_priv *priv;
	struct snd_soc_card *card;
	struct snd_soc_dai_link *link, *codec_link;
	int num_pcms, ret, i;
	struct of_phandle_args args = {};

	priv = FUNC5(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	card = &priv->card;
	card->dev = dev;

	card->owner = THIS_MODULE;
	card->fully_routed = true;

	FUNC21(&priv->lock);
	FUNC14(card, priv);

	ret = FUNC19(card, "model");
	if (ret < 0)
		return ret;

	if (FUNC13(dev->of_node, "samsung,audio-widgets")) {
		ret = FUNC18(card,
						"samsung,audio-widgets");
		if (ret < 0)
			return ret;
	}

	if (FUNC13(dev->of_node, "samsung,audio-routing")) {
		ret = FUNC17(card,
						"samsung,audio-routing");
		if (ret < 0)
			return ret;
	}

	card->dai_link = odroid_card_dais;
	card->num_links = FUNC0(odroid_card_dais);

	cpu = FUNC9(dev->of_node, "cpu");
	codec = FUNC9(dev->of_node, "codec");
	link = card->dai_link;
	codec_link = &card->dai_link[1];

	/*
	 * For backwards compatibility create the secondary CPU DAI link only
	 * if there are 2 CPU DAI entries in the cpu sound-dai property in DT.
	 * Also add required DAPM routes not available in old DTS.
	 */
	num_pcms = FUNC8(cpu, "sound-dai",
					      "#sound-dai-cells");
	if (num_pcms == 1) {
		card->dapm_routes = odroid_dapm_routes;
		card->num_dapm_routes = FUNC0(odroid_dapm_routes);
		card->num_links--;
	}

	for (i = 0; i < num_pcms; i++, link += 2) {
		ret = FUNC12(cpu, "sound-dai",
						 "#sound-dai-cells", i, &args);
		if (ret < 0)
			break;

		if (!args.np) {
			FUNC4(dev, "sound-dai property parse error: %d\n", ret);
			ret = -EINVAL;
			break;
		}

		ret = FUNC15(&args, &link->cpus->dai_name);
		FUNC10(args.np);

		if (ret < 0)
			break;
	}
	if (ret == 0) {
		cpu_dai = FUNC11(cpu, "sound-dai", 0);
		if (!cpu_dai)
			ret = -EINVAL;
	}

	FUNC10(cpu);
	if (ret < 0)
		goto err_put_node;

	ret = FUNC16(dev, codec, codec_link);
	if (ret < 0)
		goto err_put_cpu_dai;

	/* Set capture capability only for boards with the MAX98090 CODEC */
	if (codec_link->num_codecs > 1) {
		card->dai_link[0].dpcm_capture = 1;
		card->dai_link[1].dpcm_capture = 1;
	}

	priv->sclk_i2s = FUNC7(cpu_dai, "i2s_opclk1");
	if (FUNC1(priv->sclk_i2s)) {
		ret = FUNC2(priv->sclk_i2s);
		goto err_put_cpu_dai;
	}

	priv->clk_i2s_bus = FUNC7(cpu_dai, "iis");
	if (FUNC1(priv->clk_i2s_bus)) {
		ret = FUNC2(priv->clk_i2s_bus);
		goto err_put_sclk;
	}

	ret = FUNC6(dev, card);
	if (ret < 0) {
		FUNC4(dev, "snd_soc_register_card() failed: %d\n", ret);
		goto err_put_clk_i2s;
	}

	FUNC10(cpu_dai);
	FUNC10(codec);
	return 0;

err_put_clk_i2s:
	FUNC3(priv->clk_i2s_bus);
err_put_sclk:
	FUNC3(priv->sclk_i2s);
err_put_cpu_dai:
	FUNC10(cpu_dai);
	FUNC20(codec_link);
err_put_node:
	FUNC10(codec);
	return ret;
}
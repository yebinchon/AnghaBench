#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_dai_link {int dai_fmt; char* name; char* stream_name; TYPE_3__* cpus; TYPE_2__* platforms; TYPE_1__* codecs; int /*<<< orphan*/ * ops; void* num_platforms; void* num_codecs; void* num_cpus; } ;
struct snow_priv {int /*<<< orphan*/  clk_i2s_bus; struct snd_soc_dai_link dai_link; } ;
struct snd_soc_card {int num_links; struct device* dev; struct snd_soc_dai_link* dai_link; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;
struct TYPE_6__ {struct device_node* of_node; } ;
struct TYPE_5__ {struct device_node* of_node; } ;
struct TYPE_4__ {char* dai_name; void* of_node; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int SND_SOC_DAIFMT_CBS_CFS ; 
 int SND_SOC_DAIFMT_I2S ; 
 int SND_SOC_DAIFMT_NB_NF ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 struct snow_priv* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*,struct snd_soc_card*) ; 
 void* links_codecs ; 
 void* links_cpus ; 
 void* links_platforms ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*,char*) ; 
 struct device_node* FUNC7 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct device_node*) ; 
 void* FUNC9 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_soc_card*,struct snow_priv*) ; 
 int FUNC11 (struct device*,struct device_node*,struct snd_soc_dai_link*) ; 
 int /*<<< orphan*/  FUNC12 (struct snd_soc_card*,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct snd_soc_dai_link*) ; 
 int /*<<< orphan*/  snow_card_ops ; 
 struct snd_soc_card snow_snd ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct snd_soc_card *card = &snow_snd;
	struct device_node *cpu, *codec;
	struct snd_soc_dai_link *link;
	struct snow_priv *priv;
	int ret;

	priv = FUNC4(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	link = &priv->dai_link;

	link->dai_fmt = SND_SOC_DAIFMT_I2S | SND_SOC_DAIFMT_NB_NF |
			SND_SOC_DAIFMT_CBS_CFS;

	link->name = "Primary";
	link->stream_name = link->name;

	link->cpus = links_cpus;
	link->num_cpus = FUNC0(links_cpus);
	link->codecs = links_codecs;
	link->num_codecs = FUNC0(links_codecs);
	link->platforms = links_platforms;
	link->num_platforms = FUNC0(links_platforms);

	card->dai_link = link;
	card->num_links = 1;
	card->dev = dev;

	/* Try new DT bindings with HDMI support first. */
	cpu = FUNC7(dev->of_node, "cpu");

	if (cpu) {
		link->ops = &snow_card_ops;

		link->cpus->of_node = FUNC9(cpu, "sound-dai", 0);
		FUNC8(cpu);

		if (!link->cpus->of_node) {
			FUNC3(dev, "Failed parsing cpu/sound-dai property\n");
			return -EINVAL;
		}

		codec = FUNC7(dev->of_node, "codec");
		ret = FUNC11(dev, codec, link);
		FUNC8(codec);

		if (ret < 0) {
			FUNC8(link->cpus->of_node);
			FUNC3(dev, "Failed parsing codec node\n");
			return ret;
		}

		priv->clk_i2s_bus = FUNC6(link->cpus->of_node,
						       "i2s_opclk0");
		if (FUNC1(priv->clk_i2s_bus)) {
			FUNC13(link);
			FUNC8(link->cpus->of_node);
			return FUNC2(priv->clk_i2s_bus);
		}
	} else {
		link->codecs->dai_name = "HiFi",

		link->cpus->of_node = FUNC9(dev->of_node,
						"samsung,i2s-controller", 0);
		if (!link->cpus->of_node) {
			FUNC3(dev, "i2s-controller property parse error\n");
			return -EINVAL;
		}

		link->codecs->of_node = FUNC9(dev->of_node,
						"samsung,audio-codec", 0);
		if (!link->codecs->of_node) {
			FUNC8(link->cpus->of_node);
			FUNC3(dev, "audio-codec property parse error\n");
			return -EINVAL;
		}
	}

	link->platforms->of_node = link->cpus->of_node;

	/* Update card-name if provided through DT, else use default name */
	FUNC12(card, "samsung,model");

	FUNC10(card, priv);

	ret = FUNC5(dev, card);
	if (ret) {
		FUNC3(&pdev->dev, "snd_soc_register_card failed (%d)\n", ret);
		return ret;
	}

	return ret;
}
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
struct snd_soc_dai_link_component {scalar_t__ name; scalar_t__ dai_name; } ;
struct snd_soc_dai_link {int /*<<< orphan*/  init; int /*<<< orphan*/  dai_fmt; scalar_t__ stream_name; scalar_t__ name; struct snd_soc_dai_link_component* platforms; struct snd_soc_dai_link_component* codecs; struct snd_soc_dai_link_component* cpus; } ;
struct snd_soc_card {scalar_t__ name; int /*<<< orphan*/  probe; struct device* dev; int /*<<< orphan*/  owner; } ;
struct simple_dai_props {int /*<<< orphan*/ * codec_dai; int /*<<< orphan*/ * cpu_dai; } ;
struct device {struct asoc_simple_card_info* platform_data; struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct link_info {int /*<<< orphan*/  dais; int /*<<< orphan*/  link; } ;
struct device_node {int dummy; } ;
struct asoc_simple_priv {int /*<<< orphan*/ * dais; struct simple_dai_props* dai_props; struct snd_soc_dai_link* dai_link; } ;
struct TYPE_2__ {scalar_t__ name; } ;
struct asoc_simple_card_info {TYPE_1__ codec_dai; TYPE_1__ cpu_dai; int /*<<< orphan*/  daifmt; scalar_t__ name; scalar_t__ card; scalar_t__ platform; scalar_t__ codec; } ;
typedef  int /*<<< orphan*/  li ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_card*) ; 
 int /*<<< orphan*/  asoc_simple_dai_init ; 
 int /*<<< orphan*/  FUNC1 (struct asoc_simple_priv*) ; 
 int FUNC2 (struct asoc_simple_priv*,struct link_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 struct asoc_simple_priv* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*,struct snd_soc_card*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct link_info*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC9 (struct asoc_simple_priv*,struct link_info*) ; 
 int FUNC10 (struct asoc_simple_priv*) ; 
 struct snd_soc_card* FUNC11 (struct asoc_simple_priv*) ; 
 int /*<<< orphan*/  simple_soc_probe ; 
 int /*<<< orphan*/  FUNC12 (struct snd_soc_card*,struct asoc_simple_priv*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct asoc_simple_priv *priv;
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;
	struct snd_soc_card *card;
	struct link_info li;
	int ret;

	/* Allocate the private data and the DAI link array */
	priv = FUNC4(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	card = FUNC11(priv);
	card->owner		= THIS_MODULE;
	card->dev		= dev;
	card->probe		= simple_soc_probe;

	FUNC7(&li, 0, sizeof(li));
	FUNC9(priv, &li);
	if (!li.link || !li.dais)
		return -EINVAL;

	ret = FUNC2(priv, &li);
	if (ret < 0)
		return ret;

	if (np && FUNC8(np)) {

		ret = FUNC10(priv);
		if (ret < 0) {
			if (ret != -EPROBE_DEFER)
				FUNC3(dev, "parse error %d\n", ret);
			goto err;
		}

	} else {
		struct asoc_simple_card_info *cinfo;
		struct snd_soc_dai_link_component *cpus;
		struct snd_soc_dai_link_component *codecs;
		struct snd_soc_dai_link_component *platform;
		struct snd_soc_dai_link *dai_link = priv->dai_link;
		struct simple_dai_props *dai_props = priv->dai_props;

		int dai_idx = 0;

		cinfo = dev->platform_data;
		if (!cinfo) {
			FUNC3(dev, "no info for asoc-simple-card\n");
			return -EINVAL;
		}

		if (!cinfo->name ||
		    !cinfo->codec_dai.name ||
		    !cinfo->codec ||
		    !cinfo->platform ||
		    !cinfo->cpu_dai.name) {
			FUNC3(dev, "insufficient asoc_simple_card_info settings\n");
			return -EINVAL;
		}

		dai_props->cpu_dai	= &priv->dais[dai_idx++];
		dai_props->codec_dai	= &priv->dais[dai_idx++];

		cpus			= dai_link->cpus;
		cpus->dai_name		= cinfo->cpu_dai.name;

		codecs			= dai_link->codecs;
		codecs->name		= cinfo->codec;
		codecs->dai_name	= cinfo->codec_dai.name;

		platform		= dai_link->platforms;
		platform->name		= cinfo->platform;

		card->name		= (cinfo->card) ? cinfo->card : cinfo->name;
		dai_link->name		= cinfo->name;
		dai_link->stream_name	= cinfo->name;
		dai_link->dai_fmt	= cinfo->daifmt;
		dai_link->init		= asoc_simple_dai_init;
		FUNC6(dai_props->cpu_dai, &cinfo->cpu_dai,
					sizeof(*dai_props->cpu_dai));
		FUNC6(dai_props->codec_dai, &cinfo->codec_dai,
					sizeof(*dai_props->codec_dai));
	}

	FUNC12(card, priv);

	FUNC1(priv);

	ret = FUNC5(dev, card);
	if (ret < 0)
		goto err;

	return 0;
err:
	FUNC0(card);

	return ret;
}
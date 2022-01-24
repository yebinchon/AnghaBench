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
struct snd_soc_card {int /*<<< orphan*/  probe; int /*<<< orphan*/  num_dapm_widgets; int /*<<< orphan*/  dapm_widgets; struct device* dev; int /*<<< orphan*/  owner; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct link_info {int /*<<< orphan*/  dais; int /*<<< orphan*/  link; } ;
struct asoc_simple_priv {int /*<<< orphan*/  pa_gpio; } ;
typedef  int /*<<< orphan*/  li ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_card*) ; 
 int /*<<< orphan*/  FUNC4 (struct asoc_simple_priv*) ; 
 int FUNC5 (struct asoc_simple_priv*,struct link_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct asoc_simple_priv* FUNC8 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct device*,struct snd_soc_card*) ; 
 int /*<<< orphan*/  graph_card_probe ; 
 int /*<<< orphan*/  graph_dapm_widgets ; 
 int /*<<< orphan*/  FUNC10 (struct asoc_simple_priv*,struct link_info*) ; 
 int FUNC11 (struct asoc_simple_priv*) ; 
 int /*<<< orphan*/  FUNC12 (struct link_info*,int /*<<< orphan*/ ,int) ; 
 struct snd_soc_card* FUNC13 (struct asoc_simple_priv*) ; 
 int /*<<< orphan*/  FUNC14 (struct snd_soc_card*,struct asoc_simple_priv*) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct asoc_simple_priv *priv;
	struct device *dev = &pdev->dev;
	struct snd_soc_card *card;
	struct link_info li;
	int ret;

	/* Allocate the private data and the DAI link array */
	priv = FUNC8(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	card = FUNC13(priv);
	card->owner		= THIS_MODULE;
	card->dev		= dev;
	card->dapm_widgets	= graph_dapm_widgets;
	card->num_dapm_widgets	= FUNC0(graph_dapm_widgets);
	card->probe		= graph_card_probe;

	FUNC12(&li, 0, sizeof(li));
	FUNC10(priv, &li);
	if (!li.link || !li.dais)
		return -EINVAL;

	ret = FUNC5(priv, &li);
	if (ret < 0)
		return ret;

	priv->pa_gpio = FUNC7(dev, "pa", GPIOD_OUT_LOW);
	if (FUNC1(priv->pa_gpio)) {
		ret = FUNC2(priv->pa_gpio);
		FUNC6(dev, "failed to get amplifier gpio: %d\n", ret);
		return ret;
	}

	ret = FUNC11(priv);
	if (ret < 0) {
		if (ret != -EPROBE_DEFER)
			FUNC6(dev, "parse error %d\n", ret);
		goto err;
	}

	FUNC14(card, priv);

	FUNC4(priv);

	ret = FUNC9(dev, card);
	if (ret < 0)
		goto err;

	return 0;
err:
	FUNC3(card);

	return ret;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_7__ {struct device* dev; int /*<<< orphan*/  owner; } ;
struct axg_card {TYPE_1__ card; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct axg_card*) ; 
 int FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 struct axg_card* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct axg_card*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,struct axg_card*) ; 
 int /*<<< orphan*/  snd_soc_of_parse_audio_routing ; 
 int /*<<< orphan*/  snd_soc_of_parse_audio_simple_widgets ; 
 int FUNC9 (TYPE_1__*,char*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct axg_card *priv;
	int ret;

	priv = FUNC5(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	FUNC7(pdev, priv);
	FUNC8(&priv->card, priv);

	priv->card.owner = THIS_MODULE;
	priv->card.dev = dev;

	ret = FUNC9(&priv->card, "model");
	if (ret < 0)
		return ret;

	ret = FUNC3(&priv->card, "audio-routing",
					 snd_soc_of_parse_audio_routing);
	if (ret) {
		FUNC4(dev, "error while parsing routing\n");
		return ret;
	}

	ret = FUNC3(&priv->card, "audio-widgets",
					 snd_soc_of_parse_audio_simple_widgets);
	if (ret) {
		FUNC4(dev, "error while parsing widgets\n");
		return ret;
	}

	ret = FUNC1(&priv->card);
	if (ret)
		goto out_err;

	ret = FUNC0(&priv->card);
	if (ret)
		goto out_err;

	ret = FUNC6(dev, &priv->card);
	if (ret)
		goto out_err;

	return 0;

out_err:
	FUNC2(priv);
	return ret;
}
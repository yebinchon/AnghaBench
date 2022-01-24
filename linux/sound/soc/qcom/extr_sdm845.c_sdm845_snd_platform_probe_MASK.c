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
struct snd_soc_card {struct snd_soc_card* dai_link; struct snd_soc_card* card; struct device* dev; int /*<<< orphan*/  num_dapm_widgets; int /*<<< orphan*/  dapm_widgets; } ;
struct sdm845_snd_data {struct sdm845_snd_data* dai_link; struct sdm845_snd_data* card; struct device* dev; int /*<<< orphan*/  num_dapm_widgets; int /*<<< orphan*/  dapm_widgets; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct snd_soc_card*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_card*) ; 
 struct snd_soc_card* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct snd_soc_card*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_card*) ; 
 int /*<<< orphan*/  sdm845_snd_widgets ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_card*,struct snd_soc_card*) ; 
 int FUNC8 (struct snd_soc_card*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct snd_soc_card *card;
	struct sdm845_snd_data *data;
	struct device *dev = &pdev->dev;
	int ret;

	card = FUNC4(sizeof(*card), GFP_KERNEL);
	if (!card)
		return -ENOMEM;

	/* Allocate the private data */
	data = FUNC4(sizeof(*data), GFP_KERNEL);
	if (!data) {
		ret = -ENOMEM;
		goto data_alloc_fail;
	}

	card->dapm_widgets = sdm845_snd_widgets;
	card->num_dapm_widgets = FUNC0(sdm845_snd_widgets);
	card->dev = dev;
	FUNC2(dev, card);
	ret = FUNC5(card);
	if (ret) {
		FUNC1(dev, "Error parsing OF data\n");
		goto parse_dt_fail;
	}

	data->card = card;
	FUNC7(card, data);

	FUNC6(card);
	ret = FUNC8(card);
	if (ret) {
		FUNC1(dev, "Sound card registration failed\n");
		goto register_card_fail;
	}
	return ret;

register_card_fail:
	FUNC3(card->dai_link);
parse_dt_fail:
	FUNC3(data);
data_alloc_fail:
	FUNC3(card);
	return ret;
}
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
struct snd_soc_card {char* name; int num_aux_devs; int fully_routed; TYPE_2__* aux_dev; void* num_dapm_routes; void* dapm_routes; void* num_dapm_widgets; void* dapm_widgets; struct device* dev; int /*<<< orphan*/  dai_link; int /*<<< orphan*/  num_links; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct TYPE_3__ {int /*<<< orphan*/  of_node; } ;
struct TYPE_4__ {TYPE_1__ dlc; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct snd_soc_card* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_2__ aux_dev ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 struct snd_soc_card* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct snd_soc_card*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,int /*<<< orphan*/ *) ; 
 void* sun6i_codec_card_dapm_widgets ; 
 void* sun8i_codec_card_routes ; 

__attribute__((used)) static struct snd_soc_card *FUNC8(struct device *dev)
{
	struct snd_soc_card *card;
	int ret;

	card = FUNC4(dev, sizeof(*card), GFP_KERNEL);
	if (!card)
		return FUNC1(-ENOMEM);

	aux_dev.dlc.of_node = FUNC5(dev->of_node,
						 "allwinner,codec-analog-controls",
						 0);
	if (!aux_dev.dlc.of_node) {
		FUNC2(dev, "Can't find analog controls for codec.\n");
		return FUNC1(-EINVAL);
	};

	card->dai_link = FUNC7(dev, &card->num_links);
	if (!card->dai_link)
		return FUNC1(-ENOMEM);

	card->dev		= dev;
	card->name		= "A23 Audio Codec";
	card->dapm_widgets	= sun6i_codec_card_dapm_widgets;
	card->num_dapm_widgets	= FUNC0(sun6i_codec_card_dapm_widgets);
	card->dapm_routes	= sun8i_codec_card_routes;
	card->num_dapm_routes	= FUNC0(sun8i_codec_card_routes);
	card->aux_dev		= &aux_dev;
	card->num_aux_devs	= 1;
	card->fully_routed	= true;

	ret = FUNC6(card, "allwinner,audio-routing");
	if (ret)
		FUNC3(dev, "failed to parse audio-routing: %d\n", ret);

	return card;
}
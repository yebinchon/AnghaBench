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
struct snd_soc_card {char* name; int fully_routed; int /*<<< orphan*/  num_dapm_widgets; int /*<<< orphan*/  dapm_widgets; struct device* dev; int /*<<< orphan*/  dai_link; int /*<<< orphan*/  num_links; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct snd_soc_card* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 struct snd_soc_card* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct snd_soc_card*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sun6i_codec_card_dapm_widgets ; 

__attribute__((used)) static struct snd_soc_card *FUNC6(struct device *dev)
{
	struct snd_soc_card *card;
	int ret;

	card = FUNC3(dev, sizeof(*card), GFP_KERNEL);
	if (!card)
		return FUNC1(-ENOMEM);

	card->dai_link = FUNC5(dev, &card->num_links);
	if (!card->dai_link)
		return FUNC1(-ENOMEM);

	card->dev		= dev;
	card->name		= "A31 Audio Codec";
	card->dapm_widgets	= sun6i_codec_card_dapm_widgets;
	card->num_dapm_widgets	= FUNC0(sun6i_codec_card_dapm_widgets);
	card->fully_routed	= true;

	ret = FUNC4(card, "allwinner,audio-routing");
	if (ret)
		FUNC2(dev, "failed to parse audio-routing: %d\n", ret);

	return card;
}
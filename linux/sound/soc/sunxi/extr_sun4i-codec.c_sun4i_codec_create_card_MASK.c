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
struct snd_soc_card {char* name; void* num_dapm_routes; void* dapm_routes; void* num_dapm_widgets; void* dapm_widgets; struct device* dev; int /*<<< orphan*/  dai_link; int /*<<< orphan*/  num_links; } ;
struct device {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct snd_soc_card* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct snd_soc_card* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 void* sun4i_codec_card_dapm_routes ; 
 void* sun4i_codec_card_dapm_widgets ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct snd_soc_card *FUNC4(struct device *dev)
{
	struct snd_soc_card *card;

	card = FUNC2(dev, sizeof(*card), GFP_KERNEL);
	if (!card)
		return FUNC1(-ENOMEM);

	card->dai_link = FUNC3(dev, &card->num_links);
	if (!card->dai_link)
		return FUNC1(-ENOMEM);

	card->dev		= dev;
	card->name		= "sun4i-codec";
	card->dapm_widgets	= sun4i_codec_card_dapm_widgets;
	card->num_dapm_widgets	= FUNC0(sun4i_codec_card_dapm_widgets);
	card->dapm_routes	= sun4i_codec_card_dapm_routes;
	card->num_dapm_routes	= FUNC0(sun4i_codec_card_dapm_routes);

	return card;
}
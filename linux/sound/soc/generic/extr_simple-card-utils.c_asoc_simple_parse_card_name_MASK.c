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
struct snd_soc_card {TYPE_1__* dai_link; scalar_t__ name; } ;
typedef  int /*<<< orphan*/  prop ;
struct TYPE_2__ {scalar_t__ name; } ;

/* Variables and functions */
 int FUNC0 (struct snd_soc_card*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*) ; 

int FUNC2(struct snd_soc_card *card,
				char *prefix)
{
	int ret;

	if (!prefix)
		prefix = "";

	/* Parse the card name from DT */
	ret = FUNC0(card, "label");
	if (ret < 0 || !card->name) {
		char prop[128];

		FUNC1(prop, sizeof(prop), "%sname", prefix);
		ret = FUNC0(card, prop);
		if (ret < 0)
			return ret;
	}

	if (!card->name && card->dai_link)
		card->name = card->dai_link->name;

	return 0;
}
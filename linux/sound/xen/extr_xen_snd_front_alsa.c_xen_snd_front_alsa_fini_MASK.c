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
struct xen_snd_front_info {TYPE_1__* xb_dev; struct xen_snd_front_card_info* card_info; } ;
struct xen_snd_front_card_info {struct snd_card* card; } ;
struct snd_card {int /*<<< orphan*/  number; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_card*) ; 

void FUNC2(struct xen_snd_front_info *front_info)
{
	struct xen_snd_front_card_info *card_info;
	struct snd_card *card;

	card_info = front_info->card_info;
	if (!card_info)
		return;

	card = card_info->card;
	if (!card)
		return;

	FUNC0(&front_info->xb_dev->dev, "Removing virtual sound card %d\n",
		card->number);
	FUNC1(card);

	/* Card_info will be freed when destroying front_info->xb_dev->dev. */
	card_info->card = NULL;
}
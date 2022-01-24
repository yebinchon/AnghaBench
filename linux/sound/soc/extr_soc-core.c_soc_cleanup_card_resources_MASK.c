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
struct snd_soc_card {int /*<<< orphan*/  (* remove ) (struct snd_soc_card*) ;int /*<<< orphan*/  dapm; int /*<<< orphan*/ * snd_card; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_card*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_card*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_card*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_card*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_card*) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_card*) ; 

__attribute__((used)) static void FUNC8(struct snd_soc_card *card)
{
	/* free the ALSA card at first; this syncs with pending operations */
	if (card->snd_card) {
		FUNC0(card->snd_card);
		card->snd_card = NULL;
	}

	/* remove and free each DAI */
	FUNC4(card);
	FUNC5(card);

	/* remove auxiliary devices */
	FUNC3(card);
	FUNC6(card);

	FUNC1(&card->dapm);
	FUNC2(card);

	/* remove the card */
	if (card->remove)
		card->remove(card);
}
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
struct snd_card {int /*<<< orphan*/  card_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  snd_card_mutex ; 
 struct snd_card** snd_cards ; 

struct snd_card *FUNC3(int idx)
{
	struct snd_card *card;

	FUNC1(&snd_card_mutex);
	card = snd_cards[idx];
	if (card)
		FUNC0(&card->card_dev);
	FUNC2(&snd_card_mutex);
	return card;
}
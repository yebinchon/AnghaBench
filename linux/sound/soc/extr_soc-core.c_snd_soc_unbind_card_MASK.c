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
struct snd_soc_card {int instantiated; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_card*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_card*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_card*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_card*) ; 
 int /*<<< orphan*/  unbind_card_list ; 

__attribute__((used)) static void FUNC6(struct snd_soc_card *card, bool unregister)
{
	if (card->instantiated) {
		card->instantiated = false;
		FUNC2(card);
		FUNC3(card);

		/* remove all components used by DAI links on this card */
		FUNC5(card);

		FUNC4(card);
		if (!unregister)
			FUNC0(&card->list, &unbind_card_list);
	} else {
		if (unregister)
			FUNC1(&card->list);
	}
}
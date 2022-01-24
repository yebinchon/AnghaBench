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
struct snd_gus_card {scalar_t__ ess_flag; scalar_t__ ics_flag; struct snd_card* card; } ;
struct snd_card {char* mixername; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_card*,char*) ; 
 int FUNC3 (struct snd_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct snd_gus_card*) ; 
 int /*<<< orphan*/ * snd_gf1_controls ; 
 int /*<<< orphan*/ * snd_ics_controls ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

int FUNC7(struct snd_gus_card * gus)
{
	struct snd_card *card;
	unsigned int idx, max;
	int err;

	if (FUNC1(!gus))
		return -EINVAL;
	card = gus->card;
	if (FUNC1(!card))
		return -EINVAL;

	if (gus->ics_flag)
		FUNC2(card, "ICS2101");
	if (card->mixername[0] == '\0') {
		FUNC6(card->mixername, gus->ics_flag ? "GF1,ICS2101" : "GF1");
	} else {
		if (gus->ics_flag)
			FUNC5(card->mixername, ",ICS2101");
		FUNC5(card->mixername, ",GF1");
	}

	if (!gus->ics_flag) {
		max = gus->ess_flag ? 1 : FUNC0(snd_gf1_controls);
		for (idx = 0; idx < max; idx++) {
			if ((err = FUNC3(card, FUNC4(&snd_gf1_controls[idx], gus))) < 0)
				return err;
		}
	} else {
		for (idx = 0; idx < FUNC0(snd_ics_controls); idx++) {
			if ((err = FUNC3(card, FUNC4(&snd_ics_controls[idx], gus))) < 0)
				return err;
		}
	}
	return 0;
}
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
struct snd_es1688 {int dummy; } ;
struct snd_card {int /*<<< orphan*/  mixername; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 unsigned int ES1688_INIT_TABLE_SIZE ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct snd_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct snd_es1688*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_es1688*) ; 
 int /*<<< orphan*/ * snd_es1688_controls ; 
 unsigned char** snd_es1688_init_table ; 
 int /*<<< orphan*/  FUNC5 (struct snd_es1688*,unsigned char,unsigned char) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_es1688*,unsigned char,unsigned char) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC8(struct snd_card *card, struct snd_es1688 *chip)
{
	unsigned int idx;
	int err;
	unsigned char reg, val;

	if (FUNC1(!chip || !card))
		return -EINVAL;

	FUNC7(card->mixername, FUNC4(chip));

	for (idx = 0; idx < FUNC0(snd_es1688_controls); idx++) {
		if ((err = FUNC2(card, FUNC3(&snd_es1688_controls[idx], chip))) < 0)
			return err;
	}
	for (idx = 0; idx < ES1688_INIT_TABLE_SIZE; idx++) {
		reg = snd_es1688_init_table[idx][0];
		val = snd_es1688_init_table[idx][1];
		if (reg < 0xa0)
			FUNC5(chip, reg, val);
		else
			FUNC6(chip, reg, val);
	}
	return 0;
}
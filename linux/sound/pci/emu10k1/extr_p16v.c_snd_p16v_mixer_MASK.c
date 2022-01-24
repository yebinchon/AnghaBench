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
struct snd_emu10k1 {struct snd_card* card; } ;
struct snd_card {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * p16v_mixer_controls ; 
 int FUNC1 (struct snd_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct snd_emu10k1*) ; 

int FUNC3(struct snd_emu10k1 *emu)
{
	int i, err;
        struct snd_card *card = emu->card;

	for (i = 0; i < FUNC0(p16v_mixer_controls); i++) {
		if ((err = FUNC1(card, FUNC2(&p16v_mixer_controls[i],
							  emu))) < 0)
			return err;
	}
        return 0;
}
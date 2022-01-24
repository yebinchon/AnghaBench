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
struct snd_rme9652 {scalar_t__ ss_channels; int hw_rev; struct snd_kcontrol* spdif_ctl; } ;
struct snd_kcontrol {int dummy; } ;
struct snd_card {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ RME9652_NCHANNELS ; 
 int FUNC1 (struct snd_card*,struct snd_kcontrol*) ; 
 struct snd_kcontrol* FUNC2 (int /*<<< orphan*/ *,struct snd_rme9652*) ; 
 int /*<<< orphan*/  snd_rme9652_adat1_input ; 
 int /*<<< orphan*/  snd_rme9652_adat3_check ; 
 int /*<<< orphan*/ * snd_rme9652_controls ; 

__attribute__((used)) static int FUNC3(struct snd_card *card, struct snd_rme9652 *rme9652)
{
	unsigned int idx;
	int err;
	struct snd_kcontrol *kctl;

	for (idx = 0; idx < FUNC0(snd_rme9652_controls); idx++) {
		if ((err = FUNC1(card, kctl = FUNC2(&snd_rme9652_controls[idx], rme9652))) < 0)
			return err;
		if (idx == 1)	/* IEC958 (S/PDIF) Stream */
			rme9652->spdif_ctl = kctl;
	}

	if (rme9652->ss_channels == RME9652_NCHANNELS)
		if ((err = FUNC1(card, kctl = FUNC2(&snd_rme9652_adat3_check, rme9652))) < 0)
			return err;

	if (rme9652->hw_rev >= 15)
		if ((err = FUNC1(card, kctl = FUNC2(&snd_rme9652_adat1_input, rme9652))) < 0)
			return err;

	return 0;
}
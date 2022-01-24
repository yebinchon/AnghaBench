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
struct snd_pcsp {struct snd_card* card; } ;
struct snd_card {int /*<<< orphan*/  mixername; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  snd_pcsp_controls_pcm ; 
 int /*<<< orphan*/  snd_pcsp_controls_spkr ; 
 int FUNC1 (struct snd_pcsp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

int FUNC3(struct snd_pcsp *chip, int nopcm)
{
	int err;
	struct snd_card *card = chip->card;

	if (!nopcm) {
		err = FUNC1(chip, snd_pcsp_controls_pcm,
			FUNC0(snd_pcsp_controls_pcm));
		if (err < 0)
			return err;
	}
	err = FUNC1(chip, snd_pcsp_controls_spkr,
		FUNC0(snd_pcsp_controls_spkr));
	if (err < 0)
		return err;

	FUNC2(card->mixername, "PC-Speaker");

	return 0;
}
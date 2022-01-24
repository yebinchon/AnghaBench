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
struct sonicvibes {struct snd_card* card; } ;
struct snd_kcontrol {int /*<<< orphan*/  private_free; } ;
struct snd_card {int /*<<< orphan*/  mixername; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct snd_card*,struct snd_kcontrol*) ; 
 struct snd_kcontrol* FUNC3 (int /*<<< orphan*/ *,struct sonicvibes*) ; 
 int /*<<< orphan*/ * snd_sonicvibes_controls ; 
 int /*<<< orphan*/  snd_sonicvibes_master_free ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(struct sonicvibes *sonic)
{
	struct snd_card *card;
	struct snd_kcontrol *kctl;
	unsigned int idx;
	int err;

	if (FUNC1(!sonic || !sonic->card))
		return -EINVAL;
	card = sonic->card;
	FUNC4(card->mixername, "S3 SonicVibes");

	for (idx = 0; idx < FUNC0(snd_sonicvibes_controls); idx++) {
		if ((err = FUNC2(card, kctl = FUNC3(&snd_sonicvibes_controls[idx], sonic))) < 0)
			return err;
		switch (idx) {
		case 0:
		case 1: kctl->private_free = snd_sonicvibes_master_free; break;
		}
	}
	return 0;
}
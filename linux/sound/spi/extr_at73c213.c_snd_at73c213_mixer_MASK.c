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
struct snd_kcontrol {int dummy; } ;
struct snd_card {int /*<<< orphan*/  mixername; } ;
struct snd_at73c213 {TYPE_1__* pcm; struct snd_card* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 int /*<<< orphan*/ * snd_at73c213_controls ; 
 int FUNC1 (struct snd_card*,int /*<<< orphan*/ ) ; 
 struct snd_kcontrol* FUNC2 (struct snd_card*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct snd_at73c213*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_card*,struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct snd_at73c213 *chip)
{
	struct snd_card *card;
	int errval, idx;

	if (chip == NULL || chip->pcm == NULL)
		return -EINVAL;

	card = chip->card;

	FUNC5(card->mixername, chip->pcm->name);

	for (idx = 0; idx < FUNC0(snd_at73c213_controls); idx++) {
		errval = FUNC1(card,
				FUNC3(&snd_at73c213_controls[idx],
					chip));
		if (errval < 0)
			goto cleanup;
	}

	return 0;

cleanup:
	for (idx = 1; idx < FUNC0(snd_at73c213_controls) + 1; idx++) {
		struct snd_kcontrol *kctl;
		kctl = FUNC2(card, idx);
		if (kctl)
			FUNC4(card, kctl);
	}
	return errval;
}
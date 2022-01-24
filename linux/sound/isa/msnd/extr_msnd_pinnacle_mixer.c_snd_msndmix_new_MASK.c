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
struct snd_msnd {int /*<<< orphan*/  mixer_lock; } ;
struct snd_card {int /*<<< orphan*/  mixername; struct snd_msnd* private_data; } ;

/* Variables and functions */
 unsigned int FUNC0 (scalar_t__) ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct snd_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,struct snd_msnd*) ; 
 scalar_t__ snd_msnd_controls ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

int FUNC6(struct snd_card *card)
{
	struct snd_msnd *chip = card->private_data;
	unsigned int idx;
	int err;

	if (FUNC1(!chip))
		return -EINVAL;
	FUNC4(&chip->mixer_lock);
	FUNC5(card->mixername, "MSND Pinnacle Mixer");

	for (idx = 0; idx < FUNC0(snd_msnd_controls); idx++) {
		err = FUNC2(card,
				  FUNC3(snd_msnd_controls + idx, chip));
		if (err < 0)
			return err;
	}

	return 0;
}
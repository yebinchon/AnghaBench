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
struct snd_cs4231 {TYPE_1__* pcm; } ;
struct snd_card {int /*<<< orphan*/  mixername; struct snd_cs4231* private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/ * snd_cs4231_controls ; 
 int FUNC2 (struct snd_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct snd_cs4231*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct snd_card *card)
{
	struct snd_cs4231 *chip = card->private_data;
	int err, idx;

	if (FUNC1(!chip || !chip->pcm))
		return -EINVAL;

	FUNC4(card->mixername, chip->pcm->name);

	for (idx = 0; idx < FUNC0(snd_cs4231_controls); idx++) {
		err = FUNC2(card,
				 FUNC3(&snd_cs4231_controls[idx], chip));
		if (err < 0)
			return err;
	}
	return 0;
}
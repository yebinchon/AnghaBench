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
struct snd_card {int /*<<< orphan*/  shortname; int /*<<< orphan*/  mixername; } ;
struct snd_amd7930 {struct snd_card* card; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 int /*<<< orphan*/ * amd7930_controls ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct snd_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct snd_amd7930*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct snd_amd7930 *amd)
{
	struct snd_card *card;
	int idx, err;

	if (FUNC1(!amd || !amd->card))
		return -EINVAL;

	card = amd->card;
	FUNC4(card->mixername, card->shortname);

	for (idx = 0; idx < FUNC0(amd7930_controls); idx++) {
		if ((err = FUNC2(card,
				       FUNC3(&amd7930_controls[idx], amd))) < 0)
			return err;
	}

	return 0;
}